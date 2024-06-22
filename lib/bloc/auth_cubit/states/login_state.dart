
sealed class LoginUserState {}

final class LoginUserInitial extends LoginUserState {}


final class LoginAsUserInitial extends LoginUserState {}

final class LoginAsUserLoading extends LoginUserState {}

final class LoginAsUserSuccess extends LoginUserState {}

final class LoginAsUserFailure extends LoginUserState {
  final String errorMessage ;
  LoginAsUserFailure(this.errorMessage); 
}




sealed class LoginProviderState {}

final class LoginProviderInitial extends LoginProviderState {}


final class LoginProviderLoading extends LoginProviderState {}

final class LoginProviderSuccess extends LoginProviderState {}

final class LoginProviderFailure extends LoginProviderState {
  final String errorMessage ;
  LoginProviderFailure(this.errorMessage); 
}