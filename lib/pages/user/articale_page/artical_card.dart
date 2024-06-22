import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_bin1/shared/componants/constant/color.dart';
import 'package:i_bin1/shared/componants/defoualt_image.dart';

// ignore: must_be_immutable
class ArticalCard extends StatelessWidget {
  ArticalCard({this.imageUrl, this.titleText, this.descriptionText,super.key,});
  String? imageUrl ;
  String? titleText ;
  String? descriptionText ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14.0.sp),
              ),
              shadows: [
                BoxShadow(
                  color: AppColor.kShadowColor,
                  blurRadius: 12.0.sp,
                  offset: Offset(0, 0.90),
                ),
              ],
            ),
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 8.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  DefoualtImage(imageUrl ,
                    height: 75.h,
                    width: 75.w,
                  ),
                  const  Spacer(
                    flex: 1,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                        height: 8.h,
                      ),
                      Container(
                        width: 180.w,
                        child: Text(
                          descriptionText!,
                          style: TextStyle(
                            color: AppColor.kTitleColor,
                            fontSize: 11.sp,
                            fontFamily: 'Readex',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: (){},
            child: Padding(
              padding: EdgeInsets.only(top: 70.h , left: 250.w),
              child: Row(
                children: [
                  Text(
                    'Read More',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color:const Color(0xFF03B04E),
                      fontSize: 10.sp,
                      fontFamily: 'Readex',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  Icon(Icons.arrow_forward_ios_rounded ,
                    size: 14.sp,
                    color:const Color(0xFF03B04E),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

