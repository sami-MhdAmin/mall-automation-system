import 'package:dartz/dartz.dart';

import 'package:jessy_mall/core/errors/base_error.dart';

import 'package:jessy_mall/featuers/profile/models/profile_model.dart';

import 'profile_repository.dart';

class ProfileRepositoryImpl extends ProfileRepository {
  @override
  Future<Either<Failure, ProfileModel>> getProfileInfo() {
    // TODO: implement getProfileInfo
    throw UnimplementedError();
  }
}
