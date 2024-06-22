part of '../cubits/auth_cubit.dart';

abstract class AuthState {}

final class AuthInitial extends AuthState {}


// AuthState to login as a user

final class LoginAsUserInitial extends AuthState {}

final class LoginAsUserLoading extends AuthState {}

final class LoginAsUserSuccess extends AuthState {}

final class LoginAsUserFailure extends AuthState {
  final String errorMessage ;
  LoginAsUserFailure(this.errorMessage); 
}


// AuthState to login verify code 

final class LoginVerifyCodeInitial extends AuthState {}

final class LoginVerifyCodeLoading extends AuthState {}

final class LoginVerifyCodeSuccess extends AuthState {}

final class LoginVerifyCodeFailure extends AuthState {
  final String errorMessage ;
  LoginVerifyCodeFailure(this.errorMessage); 
}


// AuthState to login verify code 

final class ResendEmailCodeInitial extends AuthState {}

final class ResendEmailCodeLoading extends AuthState {}

final class ResendEmailCodeSuccess extends AuthState {}

final class ResendEmailCodeFailure extends AuthState {
  final String errorMessage ;
  ResendEmailCodeFailure(this.errorMessage); 
}


// AuthState to Register account for user

final class RegisterAccountUserInitial extends AuthState {}

final class RegisterAccountUserLoading extends AuthState {}

final class RegisterAccountUserSuccess extends AuthState {}

final class RegisterAccountUserFailure extends AuthState {
  final String errorMessage ;
  RegisterAccountUserFailure(this.errorMessage); 
}
