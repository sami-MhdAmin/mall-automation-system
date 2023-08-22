import 'dart:io' as used;

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:jessy_mall/featuers/profile/models/investor_model.dart';
import 'package:jessy_mall/featuers/profile/models/wearhouse_investor_product.dart';

import '../../../../../core/errors/base_error.dart';
import '../../../../../core/resource/string_manager.dart';
import '../../../models/profile_model.dart';
import 'package:easy_localization/easy_localization.dart';

abstract class ProfileRemoteDataSource {
  Future<Either<Failure, ProfileModel>> getProfileInfo(String token);
  Future<Either<Failure, WearhouseInvestorProductModel>>
      getProductFromWearhouse(String token);
  Future<Either<Failure, bool>> deleteProductFromWearhouse(
      {required String token, required String productId});
  Future<Either<Failure, bool>> requestExtraSpace(
      {required String token, required int space});

  Future<Either<Failure, InvestorProductModel>> getMyStoreProduct(String token);

  //SALIM
  Future<Either<Failure, String>> uploadExcelFile(String token, used.File file);
}

class ProfileRemoteDataSourceImpl extends ProfileRemoteDataSource {
  final Dio dioClient;

  ProfileRemoteDataSourceImpl(this.dioClient);

  @override
  Future<Either<Failure, ProfileModel>> getProfileInfo(String token) async {
    final Response response;
    try {
      dioClient.options.headers.addAll({'authorization': 'Bearer $token'});

      response = await dioClient.get('/profile');
      if (response.statusCode == 200 || response.statusCode == 201) {
        //TODO: note: as Map<String, dynamic>
        return Right(
            ProfileModel.fromJson(response.data as Map<String, dynamic>));
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

  @override
  Future<Either<Failure, WearhouseInvestorProductModel>>
      getProductFromWearhouse(String token) async {
    final Response response;
    try {
      dioClient.options.headers.addAll({'authorization': 'Bearer $token'});

      response = await dioClient.get('/warehouseProducts');
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(WearhouseInvestorProductModel.fromJson(
            response.data as Map<String, dynamic>));
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

  @override
  Future<Either<Failure, bool>> deleteProductFromWearhouse(
      {required String token, required String productId}) async {
    final Response response;
    try {
      dioClient.options.headers.addAll({'authorization': 'Bearer $token'});

      response = await dioClient.delete('/warehouseProducts/$productId');
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(true);
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

  @override
  Future<Either<Failure, bool>> requestExtraSpace(
      {required String token, required int space}) async {
    final Response response;
    try {
      dioClient.options.headers.addAll({'authorization': 'Bearer $token'});

      response = await dioClient
          .post('/increaseWarehouseSpaceRequests', data: {'new_space': space});
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(true);
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

  @override
  Future<Either<Failure, InvestorProductModel>> getMyStoreProduct(
      String token) async {
    final Response response;
    try {
      dioClient.options.headers.addAll({'authorization': 'Bearer $token'});

      response = await dioClient.get('/storeProducts');

      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(InvestorProductModel.fromJson(
            response.data as Map<String, dynamic>));
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

  //SALIM
  @override
  Future<Either<Failure, String>> uploadExcelFile(
      String token, used.File file) async {
    final Response response;
    try {
      dioClient.options.headers.addAll({'authorization': 'Bearer $token'});

      FormData formData = FormData.fromMap({
        'spreadsheet': await MultipartFile.fromFile(
          file.path,
        ),
      });
      response = await dioClient.post('/storeAllStoreProduct', data: formData);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return const Right("Uploaded Successfully");
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
}
