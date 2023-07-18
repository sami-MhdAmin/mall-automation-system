import 'package:dartz/dartz.dart';

import 'package:jessy_mall/core/errors/base_error.dart';

import 'package:jessy_mall/featuers/stores/models/stores_model.dart';

import '../../../core/network/network_info.dart';
import '../data/datasource/remote/store_remote_data_source.dart';
import 'store_repository.dart';

class StoreRepositoryImpl extends StoreRepository {
  final StoreRemoteDataSource _authRemoteDataSource;
  final NetworkInfo _networkInfo;

  StoreRepositoryImpl(
    this._authRemoteDataSource,
    this._networkInfo,
  );
  @override
  Future<Either<Failure, StoresModel>> getStores({required String categoryName}) async {
    // TODO: implement getStores
    throw UnimplementedError();
  }
}
