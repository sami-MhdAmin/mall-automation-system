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
    on<AuthRegisterRequested>((event, emit) async {
      emit(AuthLoading());
      try {
        final successOrFailuer = await _authRepostitory.postRegistration(
            firstName: event.firstName,
            lastName: event.lastName,
            email: event.email,
            number: event.number,
            password: event.password,
            investmentOption: event.investmentOption);
        successOrFailuer.fold((error) {
          emit(AuthSignUpFailed(faliuer: error));
        }, (registerModel) {
          emit(AuthSignUpSuccess(user: registerModel));
        });
      } catch (e) {
        rethrow;
      }
    });

    on<LoginEvent>((event, emit) async {
      emit(AuthLoading());

      //   final successOrFailuer = await _authRepostitory.postLogin(
      //     userName: event.userName,
      //     password: event.password,
      //   );

      //   successOrFailuer.fold((error) {
      //     emit(AuthLoginFailed(faliuer: error));
      //   }, (registerModel) {
      //     emit(AuthSignUpSuccess(user: registerModel));
      //   });
    });

    on<AuthLogout>((event, emit) async {
      emit(AuthLoading());

      // final successOrFailuer = await _authRepostitory.logout();
      // successOrFailuer.fold((error) {
      //   emit(AuthLoginFailed(faliuer: error));
      // }, (isLoggedOut) {
      //   emit(AuthLogoutSuccess());
      // });
    });
  }
}
