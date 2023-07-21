import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jessy_mall/core/errors/base_error.dart';
import 'package:jessy_mall/featuers/Auth/models/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<Either<Failure, UserModel>> register({
    required String firstName,
    required String lastName,
    required String email,
    required String number,
    required String password,
  });

  Future<Either<Failure, UserModel>> login({
    required String userName,
    required String password,
  });

  Future<Either<Failure, bool>> logout({required String token});
}

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  final Dio dioClient;
  AuthRemoteDataSourceImpl(this.dioClient);

  @override
  Future<Either<Failure, UserModel>> register(
      {required String firstName,
      required String lastName,
      required String email,
      required String number,
      required String password}) async {
    final Response response;
    try {
      final formData = FormData.fromMap({
        'first_name': firstName,
        'last_name': lastName,
        'email': email,
        'number': number,
        'password': password,
      });
      response = await dioClient.post(
        '/api/v1/users', //don't forget to replace the end point here
        data: formData,
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(UserModel.fromJson(""));
      }
    } on DioError catch (e) {
      if (e.response == null) {
        return left(NoInternetFailure());
      }
      if (e.response!.data['error'] != null) {
        return left(Failure(message: e.response!.data['error'].toString()));
      }
      if (e.response!.data['errors']['username'] != null) {
        return Left(
          Failure(
              message: e.response!.data['errors']['username'][0].toString()),
        );
      }
      if (e.response!.data['errors'] != null) {
        return Left(
          Failure(message: e.response!.data['errors'].toString()),
        );
      } else {
        return Left(
          Failure(message: 'حدث خطأ ما'),
        );
      }
    }
    return Left(ServerFailure());
  }

  @override
  Future<Either<Failure, UserModel>> login(
      {required String userName, required String password}) async {
    final Response response;

    response = await dioClient.post(
      '/api/v1/users', //don't forget to replace the end point here
      data: {'username': userName, 'password': password},
    );
    if (response.statusCode == 200 || response.statusCode == 201) {
      return Right(UserModel.fromJson("response.data as Map<String, dynamic>"));
    } else {
      //TODO: how is the response from back
      return Left(Failure(message: 'todo'));
    }
  }

  @override
  Future<Either<Failure, bool>> logout({required String token}) async {
    final Response response;

    dioClient.options.headers.addAll({'authorization': 'Bearer $token'});
    response = await dioClient.post(
      '/api/v1/logout',
    );
    if (response.statusCode == 200 || response.statusCode == 201) {
      return const Right(true);
    } else {
      //TODO: how is the response from back
      return Left(Failure(message: 'todo'));
    }
  }
}
