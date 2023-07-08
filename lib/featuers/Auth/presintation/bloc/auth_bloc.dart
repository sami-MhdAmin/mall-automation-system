import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jessy_mall/core/errors/base_error.dart';
import 'package:jessy_mall/featuers/Auth/models/user_model.dart';
import 'package:jessy_mall/featuers/Auth/repository/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepostitory;
  AuthBloc(this._authRepostitory) : super(AuthInitial()) {
    on<AuthEvent>((event, emit) async {
      if (event is RegisterEvent) {
        emit(AuthSignUpLoading());
        try {
          //TODO
          final successOrFailuer = await _authRepostitory.postRegistration(
              firstName: event.firstName,
              lastName: event.lastName,
              email: event.email,
              number: event.number,
              password: event.password);
          successOrFailuer.fold((error) {
            emit(AuthSignUpFaield(faliuer: error));
          }, (registerModel) {
            emit(AuthSignUpSuccess(user: registerModel));
          });
        } catch (e) {
          throw e;
        }
      }
    });
  }
}
