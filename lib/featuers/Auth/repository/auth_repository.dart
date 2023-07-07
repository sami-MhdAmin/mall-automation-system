import 'package:dartz/dartz.dart';
import 'package:jessy_mall/core/errors/base_error.dart';
import 'package:jessy_mall/featuers/Auth/models/user_model.dart';

abstract class AuthRepository {
  Future<Either<Failure, UserModel>> postRegistration();
}
