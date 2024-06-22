sealed class ButtomSheetState {}

final class ButtomSheetInitial extends ButtomSheetState {}

// AuthState to login verify code 

final class LoginVerifyCodeInitial extends ButtomSheetState {}

final class LoginVerifyCodeLoading extends ButtomSheetState {}

final class LoginVerifyCodeSuccess extends ButtomSheetState {}

final class LoginVerifyCodeFailure extends ButtomSheetState {
  final String errorMessage ;
  LoginVerifyCodeFailure(this.errorMessage); 
}


// AuthState to login verify code 

final class ResendEmailCodeInitial extends ButtomSheetState {}

final class ResendEmailCodeLoading extends ButtomSheetState {}

final class ResendEmailCodeSuccess extends ButtomSheetState {}

final class ResendEmailCodeFailure extends ButtomSheetState {
  final String errorMessage ;
  ResendEmailCodeFailure(this.errorMessage); 
}