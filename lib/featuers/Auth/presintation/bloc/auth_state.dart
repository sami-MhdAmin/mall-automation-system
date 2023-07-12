part of 'auth_bloc.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthSignUpSuccess extends AuthState {
  AuthSignUpSuccess({required this.user});
  final UserModel user;
}

class AuthSignUpLoading extends AuthState {}

class AuthSignUpFaield extends AuthState {
  AuthSignUpFaield({required this.faliuer});
  final Failure faliuer;
}
