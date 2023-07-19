import 'package:dartz/dartz.dart';

import '../../../../../core/errors/base_error.dart';
import '../../../models/profile_model.dart';

abstract class ProfileRemoteDataSource {
  Future<Either<Failure, ProfileModel>> getProfileInfo();
}

class ProfileRemoteDataSourceImpl extends ProfileRemoteDataSource {
  @override
  Future<Either<Failure, ProfileModel>> getProfileInfo() {
    // TODO: implement getProfileInfo
    throw UnimplementedError();
  }
}
