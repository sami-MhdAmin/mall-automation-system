import 'dart:io' as used;

import 'package:dartz/dartz.dart';
import 'package:file_picker/file_picker.dart';

import '../../../core/errors/base_error.dart';
import '../models/investor_model.dart';
import '../models/profile_model.dart';
import '../models/wearhouse_investor_product.dart';

abstract class ProfileRepository {
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
