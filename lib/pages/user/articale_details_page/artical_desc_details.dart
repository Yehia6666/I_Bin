import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_bin1/shared/componants/constant/color.dart';

// ignore: must_be_immutable
class ArticalDescDetails extends StatelessWidget {
   ArticalDescDetails({
    this.title,
    this.description,
    super.key,
  });
  String? title ;
  String? description ;

  @override
  Widget build(BuildContext context) {
    return   Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 12.h),
        Text(
         title!,
          style:Theme.of(context).textTheme.headline4,
        ),
        SizedBox(height: 12.h),
        Text(
          description!,
          style: TextStyle(
            color: AppColor.kBodySecColorblack,
            fontSize: 12.sp,
            fontFamily: 'Readex',
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
