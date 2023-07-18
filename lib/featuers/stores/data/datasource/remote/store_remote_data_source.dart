import 'package:dartz/dartz.dart';

import '../../../../../core/errors/base_error.dart';
import '../../../models/stores_model.dart';

abstract class StoreRemoteDataSource {
  Future<Either<Failure, StoresModel>> getStores(
      {required String categoryName});
  Future<Either<Failure, StoresModel>> getSearchedStores(
      {required int storeId});
}

class StoreRemoteDataSourceImpl extends StoreRemoteDataSource {
  @override
  Future<Either<Failure, StoresModel>> getStores(
      {required String categoryName}) async {
    // TODO: implement getStores
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, StoresModel>> getSearchedStores(
      {required int storeId}) {
    // TODO: implement getSearchedStores
    throw UnimplementedError();
  }
}
