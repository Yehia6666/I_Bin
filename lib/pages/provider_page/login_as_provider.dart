import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_bin1/bloc/auth_cubit/cubits/cubit/login_cubit.dart';
import 'package:i_bin1/bloc/auth_cubit/states/login_state.dart';
import 'package:i_bin1/core/functions/defualt_snack_bar.dart';
import 'package:i_bin1/core/functions/validinput.dart';
import 'package:i_bin1/pages/provider_page/home_provider.dart';
import 'package:i_bin1/shared/componants/constant/color.dart';
import 'package:i_bin1/shared/componants/defoualt_custom_button.dart';
import 'package:i_bin1/shared/componants/defoult_custom_text_form_filed.dart';

class LoginAsProviderProvider extends StatelessWidget {
  const LoginAsProviderProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginProviderCubit(),
      child: const Login_As_Provider(),
    );
  }
}

class Login_As_Provider extends StatefulWidget {
  const Login_As_Provider({super.key});
  static String id = 'Login_As_Provider';

  @override
  State<Login_As_Provider> createState() => _Login_As_ProviderState();
}

class _Login_As_ProviderState extends State<Login_As_Provider> {
  String? emailProvider;
  String? passwordProvider;
  GlobalKey<FormState> formKey = GlobalKey();
  bool isLoading = false;
  bool? _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Login as Provider',
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
      body: BlocConsumer<LoginProviderCubit, LoginProviderState>(
        listener: (context, state) {
          if (state is LoginProviderLoading) {
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
        } else if (state is LoginProviderSuccess) {
          log('login success');
          Navigator.pop(context); // Close the loading dialog
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeProvider(),
            ),
          );
          
        } else if (state is LoginProviderFailure) {
          Navigator.pop(context); // Close the loading dialog
          log('the error is ${state.errorMessage}');
          showSnackBarFailur(context, 'Login');
        }
        },
        builder: (context, state) {
          return Form(
            key: formKey,
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.all(14.0.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 50.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 44),
                        child: Image.asset(
                          'assets/images/Logo.svg',
                          width: double.infinity,
                        ),
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      Text(
                        'Welcome Back! 😊',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      SizedBox(
                        height: 48.h,
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
                      Container(
                        child: DefaultCustomTextFromField(
                          type: TextInputType.emailAddress,
                          onChange: (data) {
                            emailProvider = data;
                          },
                          validator: (val) {
                            return validInput(val!, 6, 50, "email");
                          },
                          hint: 'Enter Your Email address',
                          prefix: const Icon(Icons.email_outlined),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Password',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Container(
                        child: DefaultCustomTextFromField(
                          validator: (val) {
                            return validInput(val!, 4, 30, "password");
                          },
                          type: TextInputType.visiblePassword,
                          onChange: (data) {
                            passwordProvider = data;
                          },
                          onSubmit: (val) {
                            passwordProvider = val;
                          },
                          hint: 'Enter Your Password',
                          prefix: const Icon(Icons.lock_outline),
                          isObsecure: true,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            value: _isChecked,
                            activeColor: Colors.green,
                            onChanged: (value) {
                              setState(() {
                                _isChecked = value;
                              });
                            },
                          ),
                          Text(
                            'Remember Me',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                        ],
                      ),
                      DefualtCustomButton(
                          function: () async {
                            if (formKey.currentState!.validate()) {
                              try {
                                BlocProvider.of<LoginProviderCubit>(context)
                                    .loginAsProvider(
                                  email: emailProvider!,
                                  password: passwordProvider!,
                                );
                              } on Exception catch (e) {
                                log(e.toString());
                              }
                            }
                          },
                          text: 'Login'),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
