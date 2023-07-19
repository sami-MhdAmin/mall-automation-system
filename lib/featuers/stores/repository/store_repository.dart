import 'package:dartz/dartz.dart';

import '../../../core/errors/base_error.dart';
import '../models/stores_model.dart';

abstract class StoreRepository {
  Future<Either<Failure, StoresModel>> getStores(
      {required String categoryName});
  Future<Either<Failure, StoresModel>> getSearchedStores(
      {required int storeId});
}
