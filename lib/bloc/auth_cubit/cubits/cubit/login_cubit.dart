import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:i_bin1/bloc/auth_cubit/states/login_state.dart';
import 'package:i_bin1/core/services/auth_services/login_provider_services.dart';
import 'package:i_bin1/core/services/auth_services/login_user_services.dart';

class LoginUserCubit extends Cubit<LoginUserState> {
  LoginUserCubit() : super(LoginUserInitial());

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
}



class LoginProviderCubit extends Cubit<LoginProviderState> {
  LoginProviderCubit() : super(LoginProviderInitial());

 Future<void> loginAsProvider({
    required String email,
    required String password,
  }) async {
    emit(LoginProviderLoading());

    try {
      await LoginProviderServicses(Dio()).loginProviderServices(
        email: email,
        password : password ,
      );

      emit(LoginProviderSuccess());
    } on Exception catch (e) {
      log("errooooor is $e") ;
      emit(LoginProviderFailure(e.toString()));

    }


  }
}
