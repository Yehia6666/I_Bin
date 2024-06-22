import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:i_bin1/bloc/auth_cubit/states/register_state.dart';
import 'package:i_bin1/core/services/auth_services/register_user_services.dart';


class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

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
