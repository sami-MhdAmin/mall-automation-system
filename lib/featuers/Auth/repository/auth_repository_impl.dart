import 'package:dartz/dartz.dart';
import 'package:jessy_mall/core/errors/base_error.dart';
import 'package:jessy_mall/featuers/Auth/models/user_model.dart';
import 'package:jessy_mall/featuers/Auth/repository/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<Either<Failure, UserModel>> postRegistration() {
    // TODO: implement postRegistration
    throw UnimplementedError();
  }
}
