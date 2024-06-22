
sealed class RegisterState {}

final class RegisterInitial extends RegisterState {}

// AuthState to Register account for user

final class RegisterAccountUserInitial extends RegisterState {}

final class RegisterAccountUserLoading extends RegisterState {}

final class RegisterAccountUserSuccess extends RegisterState {}

final class RegisterAccountUserFailure extends RegisterState {
  final String errorMessage ;
  RegisterAccountUserFailure(this.errorMessage); 
}
