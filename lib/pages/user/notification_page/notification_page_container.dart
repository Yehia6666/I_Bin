import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_bin1/shared/componants/constant/color.dart';
import 'package:i_bin1/shared/componants/defoualt_image.dart';

class NotificationContainer extends StatelessWidget {
   NotificationContainer({
     this.urlImage,
     this.subTitleText,
     this.titleText,
     this.timeOfnotification});

   @required String? urlImage ;
   @required String? titleText ;
   @required String? subTitleText ;
   @required String? timeOfnotification ;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(bottom: 14.h),
      child: Container(
        width: double.infinity,
        height: 100.h,
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
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w,),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  DefoualtImage(urlImage,
                    width: 40.w,
                    height: 40.h,
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        titleText!,
                        style: TextStyle(
                          color: AppColor.kTitleColor,
                          fontSize: 10.sp,
                          fontFamily: 'Readex',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        subTitleText!,
                        maxLines: 2,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: AppColor.kBodySecColorblack,
                          fontSize: 10.sp,
                          fontFamily: 'Readex',
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 275.w, top: 35.h),
              child: Text(
                timeOfnotification!,
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: AppColor.kGrayColor,
                  fontSize: 8.sp,
                  fontFamily: 'Readex',
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
