import 'package:dartz/dartz.dart';

import '../../../../../core/errors/base_error.dart';
import '../../../models/stores_model.dart';

abstract class StoreRemoteDataSource {
  Future<Either<Failure,StoresModel>> getStores({required String categoryName});
}

class StoreRemoteDataSourceImpl extends StoreRemoteDataSource{
  @override
  Future<Either<Failure, StoresModel>> getStores({required String categoryName}) async{
    // TODO: implement getStores
    throw UnimplementedError();
  }
}