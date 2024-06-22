import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_bin1/bloc/auth_cubit/cubits/cubit/login_cubit.dart';
import 'package:i_bin1/bloc/auth_cubit/states/login_state.dart';
import 'package:i_bin1/core/functions/defualt_snack_bar.dart';
import 'package:i_bin1/core/functions/validinput.dart';
import 'package:i_bin1/pages/user/creat_account_for_user.dart';
import 'package:i_bin1/pages/user/login_as_user/bouttom_sheet.dart';
import 'package:i_bin1/shared/componants/constant/color.dart';
import 'package:i_bin1/shared/componants/defoualt_custom_button.dart';
import 'package:i_bin1/shared/componants/defoult_custom_text_form_filed.dart';

class LoginAsUserProvider extends StatelessWidget {
  const LoginAsUserProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginUserCubit(),
      child: LoginAsUser(),
    );
  }
}
class LoginAsUser extends StatelessWidget {
  LoginAsUser({super.key});
  static String id = "LoginAsUser";
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  String? emailForUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'OTP Verification',
          style: Theme.of(context).textTheme.headline1,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.green,
          ),
        ),
      ),
      body: BlocConsumer<LoginUserCubit, LoginUserState>(
        listener: (context, state) {
          if (state is LoginAsUserLoading) {
            log('state is loading ');
            showDialog(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: AppColor.kAppBarColorGreen,
                    ),
                  );
                });
          } else if (state is LoginAsUserSuccess) {
            Navigator.pop(context);  // Close the loading dialog
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return CustomButtonSheetProvider(
                    email: emailForUser,
                    child: CustomBottomSheet(
                      email: emailForUser,
                    ),
                  );
                });
                log('ModalButtomSheet is show ');
          } else if (state is LoginAsUserFailure) {
            Navigator.pop(context);  // Close the loading dialog
            log('the error is ${state.errorMessage}');
            showSnackBarFailur(context, 'Login');
          }
        },
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w),
            child: Form(
              key: formKey,
              child: ListView(
                children: [
                  SizedBox(
                    height: 50.h,
                  ),
                  Image.asset(
                    'assets/images/Illustration_OTP.png',
                    width: double.infinity,
                    height: 250.h,
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Text(
                    'Please enter your email address to receive a verification code',
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Row(
                    children: [
                      Text(
                        'Email',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  DefaultCustomTextFromField(
                    controller: emailController,
                    type: TextInputType.emailAddress,
                    onChange: (data) {
                      emailForUser = data;
                    },
                    validator: (val) {
                      return validInput(val!, 6, 50, "email");
                    },
                    hint: 'Enter Your Email',
                    prefix: const Icon(Icons.email_outlined),
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  DefualtCustomButton(
                    function: () async {
                      if (formKey.currentState!.validate()) {
                        BlocProvider.of<LoginUserCubit>(context).loginAsUser(
                          email: emailForUser!,
                        );
                      }
                    },
                    text: 'Send Code',
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Container(
                    height: 47,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(
                        width: 2.w,
                        color: AppColor.kAppBarColorGreen,
                      ),
                    ),
                    child: DefualtCustomButton(
                      function: () {
                        Navigator.pushNamed(context, CreateAccountForUser.id);
                      },
                      text: 'Create Account',
                      textSize: 14.sp,
                      textColor: Colors.green,
                      background: const LinearGradient(
                        colors: [Colors.white, Colors.white],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
// BlocConsumer<AuthCubit, AuthState>(
//       listener: (context, state) {
//         if (state is LoginAsUserLoading) {
//           isLoading = true;
//         } else if (state is LoginAsUserSuccess) {
//           print('success');
          // showModalBottomSheet(
          //     context: context,
          //     builder: (BuildContext context) {
          //       return const CustomBottomSheet();
          //     });
//               isLoading = false ;
//         }else if(state is LoginAsUserFailure){
//             isLoading = false ;
//             showSnackBar(context, state.errorMessage);
//         }
//       },
//       builder: (context, state) {
//         return ModalProgressHUD(
//           inAsyncCall: isLoading,
//           child: Scaffold(
//             appBar: AppBar(
//               centerTitle: true,
//               title: Text(
//                 'OTP Verification',
//                 style: Theme.of(context).textTheme.headline1,
//               ),
//               leading: IconButton(
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//                 icon: const Icon(
//                   Icons.arrow_back_ios_rounded,
//                   color: Colors.green,
//                 ),
//               ),
//             ),
//             body: Padding(
//               padding: EdgeInsets.symmetric(horizontal: 14.w),
//               child: Form(
//                 key: formKey,
//                 child: ListView(
//                   children: [
//                     SizedBox(
//                       height: 50.h,
//                     ),
//                     Image.asset(
//                       'assets/images/Illustration_OTP.png',
//                       width: double.infinity.w,
//                       height: 250.h,
//                     ),
//                     SizedBox(
//                       height: 24.h,
//                     ),
//                     Text(
//                       'Please enter your email address to receive a verification code',
//                       maxLines: 2,
//                       textAlign: TextAlign.center,
//                       style: Theme.of(context).textTheme.headline3,
//                     ),
//                     SizedBox(
//                       height: 50.h,
//                     ),
//                     Row(
//                       children: [
//                         Text(
//                           'Email',
//                           style: Theme.of(context).textTheme.headline2,
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 2.h,
//                     ),
//                     DefaultCustomTextFromField(
//                       controller: emailController,
//                       type: TextInputType.emailAddress,
//                       onChange: (data) {
//                         emailForUser = data;
//                       },
//                       validator: (val) {
//                         return validInput(val!, 6, 50, "email");
//                       },
//                       hint: 'Enter Your Email',
//                       prefix: const Icon(Icons.email_outlined),
//                     ),
//                     SizedBox(
//                       height: 14.h,
//                     ),
//                     DefualtCustomButton(
//                       function: () async {
//                         if (formKey.currentState!.validate()) {
//                           BlocProvider.of<AuthCubit>(context).loginAsUser(
//                             email: emailForUser!,
//                           );                     
  // isLoading = true;
                          // setState(() {});
                          // try {
                          //   loginUser();
                          //   print('success');
                          // } catch (e) {
                          //   print(e.toString());
                          // }
                          // isLoading = false;
                          // setState(() {});
                          // BlocProvider.of<AuthCubit>(context).loginAsUser(
                          //   email: emailForUser!,
                          // );
                          // showModalBottomSheet(
                          //     context: context,
                          //     builder: (BuildContext context) {
                          //       return const CustomBottomSheet();
                          //     });
//                         }
//                       },
//                       text: 'Send Code',
//                     ),
//                     SizedBox(
//                       height: 8.h,
//                     ),
//                     Container(
//                       height: 47,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(16.0),
//                         border: Border.all(
//                           width: 2.w,
//                           color: AppColor.kAppBarColorGreen,
//                         ),
//                       ),
//                       child: DefualtCustomButton(
//                         function: () {
//                           Navigator.pushNamed(context, CreatAcountForUser.id);
//                         },
//                         text: 'Create Account',
//                         textSize: 14.sp,
//                         textColor: Colors.green,
//                         background: const LinearGradient(
//                           colors: [Colors.white, Colors.white],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         );
//       },
//     );
  

 