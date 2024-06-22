import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_bin1/bloc/auth_cubit/cubits/cubit/register_cubit.dart';
import 'package:i_bin1/bloc/auth_cubit/states/register_state.dart';
import 'package:i_bin1/core/functions/defualt_snack_bar.dart';
import 'package:i_bin1/core/functions/loading_dialog.dart';
import 'package:i_bin1/core/functions/validinput.dart';
import 'package:i_bin1/pages/user/login_as_user/login_as_user.dart';
import 'package:i_bin1/shared/componants/constant/color.dart';
import 'package:i_bin1/shared/componants/defoualt_custom_button.dart';
import 'package:i_bin1/shared/componants/defoult_custom_text_form_filed.dart';

class CreateAccountForUserProvider extends StatelessWidget {
  const CreateAccountForUserProvider({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: CreateAccountForUser(),
    );
  }
}

// ignore: must_be_immutable
class CreateAccountForUser extends StatelessWidget {
  CreateAccountForUser({super.key});
  static String id = 'CreatAcountForUser';
  static TextEditingController? controller;
  String? phoneNumber;
  String? firstName;
  String? lastName;
  String? addressUser;
  TextEditingController emailController = TextEditingController();
  String? emailForUser;
  GlobalKey<FormState> formKey = GlobalKey();
  bool isLoading = false;
  // bool? _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is RegisterAccountUserLoading) {
          showLoadingDialog(context);
        } else if (state is RegisterAccountUserSuccess) {
          Navigator.pop(context);
          showSnackBarSuccess(context, 'Create Acount');
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const LoginAsUserProvider(),
            ),
          );
          log('Navigate to Login Page success');
        } else if (state is RegisterAccountUserFailure) {
          Navigator.pop(context);
          showSnackBarFailur(context, 'Create Acount');
          log('error is ${state.errorMessage}');
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text(
              'Create Account',
              style: Theme.of(context).textTheme.headline1,
            ),
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.green,
                )),
          ),
          body: Form(
            key: formKey,
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.all(14.0.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 44.w, right: 44.w, top: 20.h, bottom: 30),
                        child: Image.asset(
                          'assets/images/Logo.svg',
                          width: double.infinity,
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'First Name',
                                  style: Theme.of(context).textTheme.headline2,
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                DefaultCustomTextFromField(
                                  width: 160.w,
                                  validator: (val) {
                                    return validInput(val!, 3, 15, "username");
                                  },
                                  type: TextInputType.text,
                                  onChange: (val) {
                                    firstName = val;
                                  },
                                  onSubmit: (val) {
                                    firstName = val;
                                  },
                                  hint: 'First Name',
                                  prefix:
                                      const Icon(Icons.person_outline_rounded),
                                ),
                              ],
                            ),
                            const Spacer(
                              flex: 1,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Last Name',
                                  style: Theme.of(context).textTheme.headline2,
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                DefaultCustomTextFromField(
                                  width: 160.w,
                                  validator: (val) {
                                    return validInput(val!, 3, 15, "username");
                                  },
                                  type: TextInputType.text,
                                  onChange: (val) {
                                    lastName = val;
                                  },
                                  onSubmit: (val) {
                                    lastName = val;
                                  },
                                  hint: 'Last Name',
                                  prefix:
                                      const Icon(Icons.person_outline_rounded),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
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
                        height: 2.h,
                      ),
                      Row(
                        children: [
                          Text(
                            'Phone Number',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      DefaultCustomTextFromField(
                        validator: (val) {
                          return validInput(val!, 11, 11, "phone");
                        },
                        type: TextInputType.phone,
                        onChange: (data) {
                          phoneNumber = data;
                        },
                        onSubmit: (val) {
                          phoneNumber = val;
                        },
                        hint: 'Enter Your Phone Number',
                        prefix: const Icon(Icons.phone_iphone_rounded),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Row(
                        children: [
                          Text(
                            'Address',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      DefaultCustomTextFromField(
                        type: TextInputType.emailAddress,
                        onChange: (data) {
                          addressUser = data;
                        },
                        onSubmit: (data) {
                          addressUser = data;
                        },
                        hint: 'Cairo, Zagazig',
                        prefix: const Icon(Icons.location_on_outlined),
                        validator: (val) {
                          return validInput(val!, 3, 30, 'type');
                        },
                        controller: CreateAccountForUser.controller,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 4.w,
                          top: 6.h,
                        ),
                        child: InkWell(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    content: Text(
                                      'Please Write Your Location... ',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColor.kTitleColor,
                                        fontSize: 16.sp,
                                        fontFamily: 'Readex',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    backgroundColor: Colors.white,
                                    alignment: Alignment.center,
                                    actions: [
                                      DefualtCustomButton(
                                        function: () {
                                          Navigator.pop(context);
                                        },
                                        text: 'Ok',
                                      ),
                                    ],
                                  );
                                });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: 160.w,
                                height: 36.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14.sp),
                                    border: Border.all(
                                      color: AppColor.kAppBarColorGreen,
                                    )),
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.w),
                                  child: Center(
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.my_location_outlined,
                                          color: AppColor.kAppBarColorGreen,
                                          size: 16.sp,
                                        ),
                                        SizedBox(
                                          width: 4.w,
                                        ),
                                        Text(
                                          'Use current location ',
                                          style: TextStyle(
                                            color: AppColor.kAppBarColorGreen,
                                            fontSize: 10.sp,
                                            fontFamily: 'Readex',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      DefualtCustomButton(
                        function: () async {
                          if (formKey.currentState!.validate()) {
                            BlocProvider.of<RegisterCubit>(context)
                                .registerAccountUser(
                                    email: emailForUser!,
                                    firstName: firstName!,
                                    lastName: lastName!,
                                    phoneNumber: phoneNumber!,
                                    address: addressUser!);
                          }
                        },
                        text: 'Create Account',
                        textSize: 14.sp,
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
                            Navigator.pop(context, LoginAsUser.id);
                          },
                          text: 'Login',
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
              ],
            ),
          ),
        );
      },
    );
  }
}

// Form(
//                 key: formKey,
//                 child: ListView(
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.all(14.0.sp),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Padding(
//                             padding: EdgeInsets.only(
//                                 left: 44.w, right: 44.w, top: 20.h, bottom: 30),
//                             child: Image.asset(
//                               'assets/images/Logo.svg',
//                               width: double.infinity,
//                             ),
//                           ),
//                           Container(
//                             width: double.infinity,
//                             child: Row(
//                               children: [
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       'First Name',
//                                       style:
//                                           Theme.of(context).textTheme.headline2,
//                                     ),
//                                     SizedBox(
//                                       height: 4.h,
//                                     ),
//                                     DefaultCustomTextFromField(
//                                       width: 160.w,
//                                       validator: (val) {
//                                         return validInput(
//                                             val!, 3, 15, "username");
//                                       },
//                                       type: TextInputType.text,
//                                       onChange: (val) {
//                                         firstName = val;
//                                       },
//                                       onSubmit: (val) {
//                                         firstName = val;
//                                       },
//                                       hint: 'First Name',
//                                       prefix: const Icon(
//                                           Icons.person_outline_rounded),
//                                     ),
//                                   ],
//                                 ),
//                                 const Spacer(
//                                   flex: 1,
//                                 ),
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       'Last Name',
//                                       style:
//                                           Theme.of(context).textTheme.headline2,
//                                     ),
//                                     SizedBox(
//                                       height: 4.h,
//                                     ),
//                                     DefaultCustomTextFromField(
//                                       width: 160.w,
//                                       validator: (val) {
//                                         return validInput(
//                                             val!, 3, 15, "username");
//                                       },
//                                       type: TextInputType.text,
//                                       onChange: (val) {
//                                         lastName = val;
//                                       },
//                                       onSubmit: (val) {
//                                         lastName = val;
//                                       },
//                                       hint: 'Last Name',
//                                       prefix: const Icon(
//                                           Icons.person_outline_rounded),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                           SizedBox(
//                             height: 4.h,
//                           ),
//                           Row(
//                             children: [
//                               Text(
//                                 'Email',
//                                 style: Theme.of(context).textTheme.headline2,
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 2.h,
//                           ),
//                           DefaultCustomTextFromField(
//                             controller: emailController,
//                             type: TextInputType.emailAddress,
//                             onChange: (data) {
//                               emailForUser = data;
//                             },
//                             validator: (val) {
//                               return validInput(val!, 6, 50, "email");
//                             },
//                             hint: 'Enter Your Email',
//                             prefix: const Icon(Icons.email_outlined),
//                           ),
//                           SizedBox(
//                             height: 2.h,
//                           ),
//                           Row(
//                             children: [
//                               Text(
//                                 'Phone Number',
//                                 style: Theme.of(context).textTheme.headline2,
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 2.h,
//                           ),
//                           DefaultCustomTextFromField(
//                             validator: (val) {
//                               return validInput(val!, 11, 11, "phone");
//                             },
//                             type: TextInputType.phone,
//                             onChange: (data) {
//                               phoneNumber = data;
//                             },
//                             onSubmit: (val) {
//                               phoneNumber = val;
//                             },
//                             hint: 'Enter Your Phone Number',
//                             prefix: const Icon(Icons.phone_iphone_rounded),
//                           ),
//                           SizedBox(
//                             height: 4.h,
//                           ),
//                           Row(
//                             children: [
//                               Text(
//                                 'Address',
//                                 style: Theme.of(context).textTheme.headline2,
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 2.h,
//                           ),
//                           DefaultCustomTextFromField(
//                             type: TextInputType.emailAddress,
//                             onChange: (data) {
//                               addressUser = data;
//                             },
//                             onSubmit: (data) {
//                               addressUser = data;
//                             },
//                             hint: 'Cairo, Zagazig',
//                             prefix: const Icon(Icons.location_on_outlined),
//                             validator: (val) {
//                               return validInput(val!, 3, 30, 'type');
//                             },
//                             controller: CreateAccountForUser.controller,
//                           ),
//                           Padding(
//                             padding: EdgeInsets.only(
//                               right: 4.w,
//                               top: 6.h,
//                             ),
//                             child: InkWell(
//                               onTap: () {
//                                 showDialog(
//                                     context: context,
//                                     builder: (context) {
//                                       return AlertDialog(
//                                         content: Text(
//                                           'Please Write Your Location... ',
//                                           textAlign: TextAlign.center,
//                                           style: TextStyle(
//                                             color: AppColor.kTitleColor,
//                                             fontSize: 16.sp,
//                                             fontFamily: 'Readex',
//                                             fontWeight: FontWeight.w500,
//                                           ),
//                                         ),
//                                         backgroundColor: Colors.white,
//                                         alignment: Alignment.center,
//                                         actions: [
//                                           DefualtCustomButton(
//                                             function: () {
//                                               Navigator.pop(context);
//                                             },
//                                             text: 'Ok',
//                                           ),
//                                         ],
//                                       );
//                                     });
//                               },
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.end,
//                                 children: [
//                                   Container(
//                                     width: 160.w,
//                                     height: 36.h,
//                                     decoration: BoxDecoration(
//                                         borderRadius:
//                                             BorderRadius.circular(14.sp),
//                                         border: Border.all(
//                                           color: AppColor.kAppBarColorGreen,
//                                         )),
//                                     child: Padding(
//                                       padding:
//                                           EdgeInsets.symmetric(horizontal: 8.w),
//                                       child: Center(
//                                         child: Row(
//                                           children: [
//                                             Icon(
//                                               Icons.my_location_outlined,
//                                               color: AppColor.kAppBarColorGreen,
//                                               size: 16.sp,
//                                             ),
//                                             SizedBox(
//                                               width: 4.w,
//                                             ),
//                                             Text(
//                                               'Use current location ',
//                                               style: TextStyle(
//                                                 color:
//                                                     AppColor.kAppBarColorGreen,
//                                                 fontSize: 10.sp,
//                                                 fontFamily: 'Readex',
//                                                 fontWeight: FontWeight.w400,
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             height: 16.h,
//                           ),
//                           DefualtCustomButton(
//                             function: () async {
//                               if (formKey.currentState!.validate()) {
//                                 BlocProvider.of<RegisterCubit>(context)
//                                     .registerAccountUser(
//                                         email: emailForUser!,
//                                         firstName: firstName!,
//                                         lastName: lastName!,
//                                         phoneNumber: phoneNumber!,
//                                         address: addressUser!);
//                               }
//                             },
//                             text: 'Create Account',
//                             textSize: 14.sp,
//                           ),
//                           SizedBox(
//                             height: 8.h,
//                           ),
//                           Container(
//                             height: 47,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(16.0),
//                               border: Border.all(
//                                 width: 2.w,
//                                 color: AppColor.kAppBarColorGreen,
//                               ),
//                             ),
//                             child: DefualtCustomButton(
//                               function: () {
//                                 Navigator.pop(context, LoginAsUser.id);
//                               },
//                               text: 'Login',
//                               textSize: 14.sp,
//                               textColor: Colors.green,
//                               background: const LinearGradient(
//                                 colors: [Colors.white, Colors.white],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               );




// Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           centerTitle: true,
//           title:  Text(
//             'Create Account' ,
//             style: Theme.of(context).textTheme.headline1,
//           ),
//           leading: IconButton(onPressed: (){
//             Navigator.pop(context);
//           }, icon: const Icon(Icons.arrow_back_ios_new_rounded,color: Colors.green,)),
//         ),
//         body: Form(
//           key: formKey,
//           child: ListView(
//             children:[
//               Padding(
//               padding: EdgeInsets.all(14.0.sp),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 44.w , vertical: 50.h),
//                     child: Image.asset('assets/images/Logo.svg',
//                       width: double.infinity,
//                     ),
//                   ),


//                    Row(
//                     children: [
//                       Text('Email' ,
//                         style: Theme.of(context).textTheme.headline2,
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 2.h,
//                   ),


//                   DefaultCustomTextFromField(
//                     validator: (val){
//                       return validInput(val!, 5, 50, "email") ;
//                     },
//                     type: TextInputType.emailAddress,
//                     onChange: (data){
//                       emailForUser = data ;
//                     },
//                     onSubmit: (val){
//                       emailForUser = val ;
//                     },
//                     hint: 'Enter Your Email address',
//                     prefix:const Icon(Icons.email_outlined),
//                   ),




//                   Row(
//                     children: [
//                       Text('Password' ,
//                         style:  Theme.of(context).textTheme.headline2,
//                       ),
//                     ],
//                   ),
//                     SizedBox(
//                     height: 2.h,
//                   ),


//                   DefaultCustomTextFromField(
//                     validator: (val){
//                       return validInput(val!, 3, 30 , "password") ;
//                     },
//                     type: TextInputType.visiblePassword,
//                     onChange: (val){
//                       passwordForUser = val ;
//                     },
//                     onSubmit: (val){
//                       passwordForUser = val ;
//                     },
//                     hint: 'Enter Your password',
//                     prefix:const Icon(Icons.lock_outline) ,
//                     isObsecure: true ,
//                   ),



//                     Row(
//                     children: [
//                       Text('Address' ,
//                         style: Theme.of(context).textTheme.headline2,
//                       ),
//                     ],
//                   ),
//                    SizedBox(
//                     height: 2.h,
//                   ),


//                   DefaultCustomTextFromField(
//                     type: TextInputType.emailAddress,
//                     onChange: (data){
//                       emailForUser = data ;
//                     },
//                     hint: 'Cairo, Zagazig',
//                     prefix:const Icon(Icons.location_on_outlined) ,
//                     validator: (val){
//                       return validInput(val!, 3, 15, 'type') ;
//                     },
//                     controller: CreatAcountForUser.controller,
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(right: 4.w, top: 6.h, ),
//                     child: InkWell(
//                       onTap: (){},
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           Container(
//                             width: 160.w,
//                             height:36.h,
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(14.sp),
//                                 border: Border.all(
//                                   color:AppColor.kAppBarColorGreen,
//                                 )
//                             ),
//                             child: Padding(
//                               padding:  EdgeInsets.symmetric(horizontal: 8.w),
//                               child: Center(
//                                 child: Row(
//                                   children: [
//                                     Icon(Icons.my_location_outlined ,
//                                       color: AppColor.kAppBarColorGreen,
//                                       size: 16.sp,
//                                     ),

//                                     SizedBox(
//                                       width: 4.w,
//                                     ),
//                                     Text('Use current location ',
//                                       style: TextStyle(
//                                         color: AppColor.kAppBarColorGreen,
//                                         fontSize: 10.sp,
//                                         fontFamily: 'Readex',
//                                         fontWeight: FontWeight.w400,

//                                       ),),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                    SizedBox(
//                     height: 16.h,
//                   ),


//                   DefualtCustomButton(
//                     function: (){
//                       if(formKey.currentState!.validate()){
//                         isLoading = true ;
//                         Navigator.pushReplacement(
//                             context,
//                             MaterialPageRoute(builder: (context) =>const CongratulationPage()));
//                       }else{
//                         print('there was an error');
//                       }
//                     },
//                     text: 'Send Code',
//                     textSize: 14.sp,
//                   ),
//                 ],
//               ),
//             ),],
//           ),
//         ),
//       ),



//  Future<void> rigisterUser() async {
//     UserCredential user =
//         await FirebaseAuth.instance.createUserWithEmailAndPassword(
//       email: phoneForUser!,
//       password: userNameForUser!,
//     );
//   }
// function: () async {
//   if(formKey.currentState!.validate()){
//     setState(() {
//       isLoading = true ;
//     });
//     try{
//       await rigisterUser();
//       showSnackBar(context, 'Success');
//       Navigator.pushNamed(context, CongratulationPage.id);
//     }  on FirebaseAuthException catch (e) {
//       if (e.code == 'weak-password') {
//         showSnackBar(context , 'The password provided is too weak.');
//       } else if (e.code == 'email-already-in-use') {
//         showSnackBar(context, 'email already exists');
//       }
//     } catch (e){
//       showSnackBar(context, 'there was an error');
//     }
//     setState(() {
//       isLoading = false ;
//     });
//
//   } else {}
//
// },
