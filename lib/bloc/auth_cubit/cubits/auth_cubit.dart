import 'dart:developer';

import 'package:bloc/bloc.dart';

import 'package:dio/dio.dart';

import 'package:i_bin1/core/services/auth_services/email_resend_code_services.dart';

import 'package:i_bin1/core/services/auth_services/login_user_services.dart';

import 'package:i_bin1/core/services/auth_services/login_verify_services.dart';

import 'package:i_bin1/core/services/auth_services/register_user_services.dart';


part '../states/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {

  AuthCubit() : super(AuthInitial());
  // Auth cubit to login as a user

 Future<void> loginAsUser({
    required String email,
  }) async {
    emit(LoginAsUserLoading());

    try {
      await LoginUserServices(Dio()).loginService(
        email: email,
      );

      emit(LoginAsUserSuccess());
    } on Exception catch (e) {
      log(e.toString()) ;
      emit(LoginAsUserFailure(e.toString()));

    }


  }

  // Auth cubit to verify code to login for user

  Future<void>  loginVrtifyCode({required String email, required String otp}) async {
    emit(LoginAsUserLoading());

    try {
      await LoginVerifyService(Dio()).loginVerifyService(
        email: email,
        otp: otp,
      );

      emit(LoginAsUserSuccess());
    } on Exception catch (e) {
      emit(LoginAsUserFailure(e.toString()));
    }
  }

  // Auth cubit to Resend code to Your Email

 Future<void>  resendEmailCode({
    required String email,
  }) async {
    emit(ResendEmailCodeLoading());

    try {
      await ResendEmailCodeService(Dio()).resendEmailCodeService(
        email: email,
      );

      emit(ResendEmailCodeSuccess());
    } on Exception catch (e) {
      emit(ResendEmailCodeFailure(e.toString()));
    }
  }

  // Auth cubit to Resend code to Your Email

  Future<void>  registerAccountUser({
    required String email,
    required String firstName,
    required String lastName,
    required String phoneNumber,
    required String address,
  }) async {
    emit(RegisterAccountUserLoading());

    try {
      await RegisterAcountUserService(Dio()).registerAcountUserService(
        email: email,
        firstName: firstName,
        lastName: lastName,
        phoneNumber: phoneNumber,
        address: address,
      );
      emit(RegisterAccountUserSuccess());
      
    } on Exception catch (e) {
      emit(RegisterAccountUserFailure(e.toString()));
    }
  }
}
