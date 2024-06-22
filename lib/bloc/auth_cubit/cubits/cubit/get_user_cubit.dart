


import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:i_bin1/core/services/auth_services/get_user_service.dart';
import 'package:i_bin1/data/model/get_user_model_service/get_user_model.dart';
import 'package:i_bin1/data/model/get_user_model_service/user.dart';




part '../../states/get_user_state.dart';


class GetUserCubit extends Cubit<GetUserState> {
  

  GetUserCubit() : super(GetUserInitial());

 getUser(GetUserModel getUserModel) async {
    emit(GetUserLoading());
    GetUserModel getUserModelData = await GetUserServices(Dio()).getUserServices();
    try {
      if (getUserModelData.userModel != null) {
        log('getUser success: ${getUserModelData.userModel}');
        emit(GetUserSuccess(user: getUserModelData.userModel!));
      } else {
        log('getUser error: User data is null');
        emit(
          GetUserFailure(
            'Failed to get user data',
        ),
        );
      }
    } catch (e) {
      emit(GetUserFailure(e.toString(),),
      );
    }
    return getUserModelData ;
  }
}