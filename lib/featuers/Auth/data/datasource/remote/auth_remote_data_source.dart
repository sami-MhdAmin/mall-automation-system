import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jessy_mall/core/errors/base_error.dart';
import 'package:jessy_mall/core/resource/string_manager.dart';
import 'package:jessy_mall/featuers/Auth/models/user_model.dart';
import 'package:easy_localization/easy_localization.dart';

abstract class AuthRemoteDataSource {
  Future<Either<Failure, UserModel>> register({
    required String firstName,
    required String lastName,
    required String email,
    required String number,
    required String password,
    required int investmentOption,
  });

  // Future<Either<Failure, UserModel>> login({
  //   required String userName,
  //   required String password,
  // });

  // Future<Either<Failure, bool>> logout({required String token});
}

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  final Dio dioClient;
  AuthRemoteDataSourceImpl(this.dioClient);

  @override
  Future<Either<Failure, UserModel>> register({
    required String firstName,
    required String lastName,
    required String email,
    required String number,
    required String password,
    required int investmentOption,
  }) async {
    final Response response;
    try {
      final formData = FormData.fromMap({
        'name': firstName + lastName,
        'email': email,
        'phone': number,
        'password': password,
        "investment_option": investmentOption
      });
      response = await dioClient.post(
        '/register', //don't forget to replace the end point here
        data: formData,
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(UserModel.fromJson(response.data));
      }
    } on DioError catch (e) {
      if (e.response == null) {
        return left(NoInternetFailure());
      }
      if (e.response!.data['message'] != null) {
        return left(Failure(message: e.response!.data['message'].toString()));
      } else {
        return Left(
          Failure(message: StringManager.sthWrong.tr()),
        );
      }
    }
    return Left(ServerFailure());
  }

  // @override
  // Future<Either<Failure, UserModel>> login(
  //     {required String userName, required String password}) async {
  //   final Response response;

  //   response = await dioClient.post(
  //     '/api/v1/users', //don't forget to replace the end point here
  //     data: {'username': userName, 'password': password},
  //   );
  //   if (response.statusCode == 200 || response.statusCode == 201) {
  //     return Right(UserModel.fromJson("response.data as Map<String, dynamic>"));
  //   } else {
  //     //TODO: how is the response from back
  //     return Left(Failure(message: 'todo'));
  //   }
  // }

  // @override
  // Future<Either<Failure, bool>> logout({required String token}) async {
  //   final Response response;

  //   dioClient.options.headers.addAll({'authorization': 'Bearer $token'});
  //   response = await dioClient.post(
  //     '/api/v1/logout',
  //   );
  //   if (response.statusCode == 200 || response.statusCode == 201) {
  //     return const Right(true);
  //   } else {
  //     //TODO: how is the response from back
  //     return Left(Failure(message: 'todo'));
  //   }
  // }
}
