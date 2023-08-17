import 'package:dartz/dartz.dart';

import 'package:jessy_mall/core/errors/base_error.dart';

import 'package:jessy_mall/featuers/profile/models/profile_model.dart';

import '../../../core/network/network_info.dart';
import '../data/datasource/remote/profile_remote_data_source.dart';
import 'profile_repository.dart';

class ProfileRepositoryImpl extends ProfileRepository {
  final ProfileRemoteDataSource _profileRemoteDataSource;
  final NetworkInfo _networkInfo;

  ProfileRepositoryImpl(this._profileRemoteDataSource, this._networkInfo);

  @override
  Future<Either<Failure, ProfileModel>> getProfileInfo() {
    // TODO: implement getProfileInfo
    throw UnimplementedError();
  }
}
