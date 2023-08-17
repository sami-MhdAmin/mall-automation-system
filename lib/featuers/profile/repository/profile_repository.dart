import 'package:dartz/dartz.dart';

import '../../../core/errors/base_error.dart';
import '../models/profile_model.dart';

abstract class ProfileRepository {
  Future<Either<Failure, ProfileModel>> getProfileInfo(String token);
}
