import 'package:dartz/dartz.dart';
import 'package:jessy_mall/core/errors/base_error.dart';
import 'package:jessy_mall/core/errors/execption.dart';
import 'package:jessy_mall/core/network/network_info.dart';
import 'package:jessy_mall/featuers/manage_store/data/datasource/remote/edit_store_info_remote_datasource.dart';
import 'package:jessy_mall/featuers/manage_store/models/store_model.dart';
import 'package:jessy_mall/featuers/manage_store/repository/edit_store_info_repository.dart';

class EditStoreInfoRepositoryImpl extends EditStoreInfoRepository {
  final EditStoreInfoRemoteDatasource _editStoreInfoRemoteDataSource;
  final NetworkInfo _networkInfo;

  EditStoreInfoRepositoryImpl(
      this._editStoreInfoRemoteDataSource, this._networkInfo);

  @override
  Future<Either<Failure, StoreModel>> getStoreInfo(String token) async {
    if (await _networkInfo.isConnected) {
      try {
        final addSuccess =
            await _editStoreInfoRemoteDataSource.getStoreInfo(token);
        return addSuccess.fold(
          (failure) => Left(failure),
          (getStoreInfo) {
            return right(getStoreInfo);
          },
        );
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return left(NoInternetFailure());
    }
  }

  @override
  Future<Either<Failure, StoreModel>> updateStoreInfo(
      {required String name_ar,
      required String name_en,
      required String openTime,
      required String closeTime}) {
    // TODO: implement updateStoreInfo
    throw UnimplementedError();
  }
}
