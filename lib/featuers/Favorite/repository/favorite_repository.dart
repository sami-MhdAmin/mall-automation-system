import 'package:dartz/dartz.dart';

import '../../../core/errors/base_error.dart';
import '../../../core/errors/execption.dart';
import '../../../core/network/network_info.dart';
import '../data/datasource/remote/favorite_remote_data_source.dart';
import '../models/favorite_model.dart';

abstract class FavoriteRepository {
  Future<Either<Failure, FavoriteModel>> getfavoriteProducts(String token);
}

class FavoriteRepositoryImpl extends FavoriteRepository {
  final FavoriteRemoteDataSource _favoriteRemoteDataSource;
  final NetworkInfo _networkInfo;

  FavoriteRepositoryImpl(
    this._favoriteRemoteDataSource,
    this._networkInfo,
  );
  @override
  Future<Either<Failure, FavoriteModel>> getfavoriteProducts(
      String token) async {
    if (await _networkInfo.isConnected) {
      try {
        final addsuccess =
            await _favoriteRemoteDataSource.getfavoriteProducts(token);

        return addsuccess.fold(
          (failure) => Left(failure),
          (getfavoriteProducts) {
            return right(getfavoriteProducts);
          },
        );
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return left(NoInternetFailure());
    }
  }
}
