import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:i_bin1/bloc/auth_cubit/states/buttom_sheet_state.dart';
import 'package:i_bin1/core/services/auth_services/email_resend_code_services.dart';
import 'package:i_bin1/core/services/auth_services/login_verify_services.dart';


class ButtomSheetCubit extends Cubit<ButtomSheetState> {
  ButtomSheetCubit() : super(ButtomSheetInitial());

 // Auth cubit to verify code to login for user

  Future<void>  loginVrtifyCode({required String email, required String otp}) async {
    emit(LoginVerifyCodeLoading());

    try {
      await LoginVerifyService(Dio()).loginVerifyService(
        email: email,
        otp: otp,
      );

      emit(LoginVerifyCodeSuccess());
    } on Exception catch (e) {
      emit(LoginVerifyCodeFailure(e.toString()));
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
}