import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_bin1/pages/user/home_user_page/home_user.dart';
import 'package:i_bin1/shared/componants/constant/color.dart';
import 'package:i_bin1/shared/componants/defoualt_custom_button.dart';
import 'package:i_bin1/shared/componants/defoualt_image.dart';

class RequestSubmittedPage extends StatelessWidget {
  const RequestSubmittedPage({super.key});
  static String id = 'RequestSubmittedPage' ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.w),
        child: Column(
          children: [
            const  Spacer(
             flex: 8,
           ),
           DefoualtImage('assets/images/Request_Submitted.svg'),
            const  Spacer(
              flex: 5,
            ),
            Text(
              'Your request has been submitted successfully',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColor.kAppBarColorBlack,
                fontSize: 16.sp,
                fontFamily: 'Readex',
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(
              flex: 2,
            ),
              Text(
              'Thanks for telling us your opinion, if you faced any problem don’t hesitate to tell us',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline3,
            ),

            const Spacer(
            flex: 3,
          ),

            Container(
              height: 47.h,
               decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0.sp),
               border: Border.all(width: 2.0.w, color: const Color(0xFF03B04E)),
               ),
              child: DefualtCustomButton(
                function: () {
                  Navigator.pop(context);
                },
                background:const LinearGradient(
                  colors: [Colors.white, Colors.white],
                ),
                text: 'Cancel Request',
                textColor: Colors.green,
                textSize: 14.sp,

              ),

            ),
            const  Spacer(
              flex: 1,
            ),
            DefualtCustomButton(
              function: (){
                Navigator.pushNamed(context, HomeUserPage.id);
              },
              text: 'Back to Home',
              textSize: 14.sp,
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
