import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_bin1/pages/user/point_borad_user_page/point_borad_user_screen.dart';
import 'package:i_bin1/shared/componants/constant.dart';
import 'package:i_bin1/shared/componants/constant/color.dart';
import 'package:i_bin1/shared/componants/defoualt_custom_button.dart';
import 'package:i_bin1/shared/componants/defoualt_image.dart';

// ignore: must_be_immutable
class DefualtUserCard extends StatelessWidget {
  DefualtUserCard( this.descriptionText, this.textButtom , this.imgeUrl, {super.key});

  String? textButtom =  'Point Board' ;
  @required String? descriptionText ;
  @required String? imgeUrl ;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.w,
      height: 150.h,
      child: Container(
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.0.sp),
          ),
          shadows: [
            BoxShadow(
              color: AppColor.kShadowColor,
              blurRadius: 12.0.sp,
              offset:const Offset(0, 0.90),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w , vertical: 14.h),
              child: Column(
                children: [
                  Container(
                    width:150.w,
                    child: Text(
                      descriptionText! ,
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      style:TextStyle(
                        color: AppColor.kTitleColor,
                        fontSize: 12.sp,
                        fontFamily: 'Readex',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
        
                  SizedBox(
                    height: 16.h,
                  ),
        
                  DefualtCustomButton(
                    function: (){
                      Navigator.pushNamed(context, PointBoradUserScreen.id);
                    },
                    text: textButtom ,
                    textSize: 12.sp,
                    height: 40.h,
                    width: 130.w,
                    borderRound: 8.sp,
                    background: kPrimaryColor,
                    textColor: Colors.white,
                  ),
                  
                ],
              ),
            ),
            SizedBox(
              width: 8.w,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.h , horizontal: 8.w),
              child: DefoualtImage( imgeUrl   ,
                width: 100.w,
                height: 100.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}



// GestureDetector(
                      //   onTap: (){
                      //     Navigator.pushNamed(context, PointBoradUserScreen.id);
                      //   },
                      //   child: Container(
                      //     child: Center(
                      //       child: Row(
                      //         mainAxisAlignment: MainAxisAlignment.center,
                      //         children: [
                      //           Text(
                      //             textButtom!,
                      //             maxLines: 3,
                      //             style: TextStyle(
                      //               color: Colors.white,
                      //               fontSize: 12,
                      //               fontFamily: 'Readex',
                      //               fontWeight: FontWeight.w600,
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //     ),
                      //     height:40,
                      //     width: 140,
                      //     decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.circular(8),
                      //       gradient: kPrimaryColor,
                      //     ),
                      //   ),
                      // ),