part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class RegisterEvent extends AuthEvent {
  final String firstName;
  final String lastName;
  final String email;
  final String number;
  final String password;

  RegisterEvent({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.number,
    required this.password,
  });
}

class LoginEvent extends AuthEvent {
  final String userName;
  final String password;

  LoginEvent({
    required this.userName,
    required this.password,
  });
}

class AuthLogout extends AuthEvent {}
