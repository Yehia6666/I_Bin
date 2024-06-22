part of '../cubits/cubit/logout_cubit.dart';


@immutable

sealed class LogoutState {}


final class LogoutInitial extends LogoutState {}


final class LogoutLoading extends LogoutState {}


final class LogoutSuccess extends LogoutState {}


final class LogoutFailuer extends LogoutState {
  final String errorMessage ;
  LogoutFailuer(this.errorMessage) ;
}

