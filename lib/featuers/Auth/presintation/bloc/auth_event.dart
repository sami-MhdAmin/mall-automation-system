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
