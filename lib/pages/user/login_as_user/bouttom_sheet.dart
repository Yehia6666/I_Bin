import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_bin1/bloc/auth_cubit/cubits/cubit/buttom_sheet_cubit.dart';
import 'package:i_bin1/bloc/auth_cubit/states/buttom_sheet_state.dart';
import 'package:i_bin1/core/functions/defualt_snack_bar.dart';
import 'package:i_bin1/core/functions/loading_dialog.dart';
import 'package:i_bin1/pages/user/congrattulation_page/congratulation.dart';
import 'package:i_bin1/shared/componants/constant/color.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:i_bin1/shared/componants/defoualt_custom_button.dart';

class CustomButtonSheetProvider extends StatelessWidget {
   CustomButtonSheetProvider({super.key , required this.child , this.email});
  final Widget child ;
  final String? email;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ButtomSheetCubit(),
      child: CustomBottomSheet(email: email,),
    );
  }
}

class CustomBottomSheet extends StatefulWidget {
  final String? email;
  CustomBottomSheet({super.key,required this.email});

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  String? otp;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // shardPrefrancesMethod () async {
  @override
  Widget build(BuildContext context) {
     if (widget.email == null) {
      return const Center(child: Text("Email is required"));
    }

    return BlocConsumer<ButtomSheetCubit, ButtomSheetState>(
      listener: (context, state) {
        // state for login verification
        if (state is LoginVerifyCodeLoading) {
          showLoadingDialog(context);
        }  else if (state is LoginVerifyCodeSuccess) {
           Navigator.pop(context);
          log('Login is Success');
          showSnackBarSuccess(context, 'Login');
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => CongratulationPage(),
            ),
          );
        } else if (state is LoginVerifyCodeFailure) {
           Navigator.pop(context);
          log('Login is falid');
          showSnackBarFailur(context, 'Login');
        }
        // state for resend code
        if (state is ResendEmailCodeLoading) {
          showLoadingDialog(context);
        } else if (state is ResendEmailCodeSuccess) {
           Navigator.pop(context);
          log('Resend code is Done');
          showSnackBarSuccess(context, 'Resend Code');
        } else if (state is ResendEmailCodeFailure) {
           Navigator.pop(context);
          log('Resend code is Failur');
          showSnackBarFailur(context, 'Resend Code');
        }
      },
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 32.h),
          child: Form(
            key: formKey,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Please enter the 6 digit codesent sent to:",
                  maxLines: 2,
                  style: TextStyle(
                    color: AppColor.kBodySecColorblack,
                    fontSize: 14.sp,
                    fontFamily: 'Readex',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  widget.email!,
                  maxLines: 2,
                  style: TextStyle(
                    color: AppColor.kAppBarColorGreen,
                    fontSize: 16.sp,
                    fontFamily: 'Readex',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                OtpTextField(
                  borderRadius: BorderRadius.circular(14),
                  numberOfFields: 6,
                  fieldWidth: 45.0.w,
                  fieldHeight: 60.0.h,
                  cursorColor: AppColor.kAppBarColorGreen,
                  textStyle: TextStyle(
                    fontSize: 18.sp,
                  ),

                  focusedBorderColor: AppColor.kAppBarColorGreen,
                  borderColor: AppColor.kGrayColor,
                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true,
                  //runs when a code is typed in
                  onCodeChanged: (String verificationCode) {
                    //handle validation or checks here
                    otp = verificationCode;
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode) {
                    otp = verificationCode;
                    BlocProvider.of<ButtomSheetCubit>(context).loginVrtifyCode(
                      email: widget.email!,
                      otp: otp!,
                    );
                  },
                  // end onSubmit
                ),
                SizedBox(
                  height: 24.h,
                ),
                DefualtCustomButton(
                  function: () {
                    BlocProvider.of<ButtomSheetCubit>(context).resendEmailCode(
                      email: widget.email!,
                    );
                  },
                  text: 'Send Code',
                ),
                SizedBox(
                  height: 14.h,
                ),
                Text(
                  "00:42",
                  style: TextStyle(
                    color: AppColor.kGrayColor,
                    fontSize: 18.sp,
                    fontFamily: 'Readex',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Resend Code",
                  style: TextStyle(
                    color: const Color(0xFF606060),
                    fontSize: 16.sp,
                    fontFamily: 'Readex',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
