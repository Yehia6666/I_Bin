part of '../cubits/cubit/get_user_cubit.dart';


sealed class GetUserState {}


class GetUserInitial extends GetUserState {}


class GetUserLoading extends GetUserState {}


class GetUserSuccess extends GetUserState {

  final User user;

  GetUserSuccess({required this.user});

}


class GetUserFailure extends GetUserState {

  final String errorMessage;

  GetUserFailure(this.errorMessage);

}

