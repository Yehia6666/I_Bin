import 'dart:developer';


import 'package:bloc/bloc.dart';

import 'package:dio/dio.dart';

import 'package:i_bin1/core/services/auth_services/log_out_servies.dart';

// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';


part '../../states/logout_state.dart';


class LogoutCubit extends Cubit<LogoutState> {

  LogoutCubit() : super(LogoutInitial());


  Future<void> logoutAccount() async {

    emit(LogoutLoading());


    try {
      await LogOutServices(Dio()).logOutServices();
      emit(LogoutSuccess());
    } on Exception catch (e) {
      log(e.toString());
      emit(LogoutFailuer(e.toString()));
    }

  }

}

