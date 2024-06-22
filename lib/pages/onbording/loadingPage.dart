import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_bin1/pages/provider_page/login_as_provider.dart';
import 'package:i_bin1/pages/user/login_as_user/login_as_user.dart';
import 'package:i_bin1/shared/componants/constant/color.dart';

import 'package:i_bin1/shared/componants/defoualt_custom_button.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});
  static String id = 'LoadingPage' ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(bottom: 50.h,top:80.h,right: 14.w ,left: 14.w),
        child: Column(
          children: [
            const Spacer(
              flex: 10,
            ),
            Image.asset("assets/images/Logo.svg",
              width: double.infinity,
              height: 150,
            ),

            const  Spacer(
              flex: 10,
            ),
            Container(
              height: 47,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                border: Border.all(width: 2.0 , color: AppColor.kAppBarColorGreen),
              ),
              child:  DefualtCustomButton(
                function: () {
                  log("login as Provider") ;
                  Navigator.pushNamed(context, Login_As_Provider.id);
                },
                text: 'Continue as Provider',
                textSize: 16,
                textColor: Colors.green,
                background:const LinearGradient(
                  colors: [Colors.white, Colors.white],
                ),
              ),
            ),
            const  Spacer(
              flex: 1,
            ),
            DefualtCustomButton(
              function: (){
                log("login as user") ;
                Navigator.pushNamed(context, LoginAsUser.id);
              },
              text: 'Continue as User',
              textSize: 16,
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
