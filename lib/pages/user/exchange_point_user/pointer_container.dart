import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_bin1/shared/componants/defoualt_image.dart';

class PartnerContainer extends StatelessWidget {
  final String imageName;
  final String text;
  final double? widthImage;
  final double? heightImage;

  const PartnerContainer({
    Key? key,
    required this.imageName,
    required this.text,
     this.widthImage,
     this.heightImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100.0.h,
          width: 150.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14.0.sp),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5.sp,
                blurRadius: 7.sp,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.w),
            child: Center(
              child: DefoualtImage(imageName,
              width: widthImage,
                height: heightImage,
              ),
            ),
          ),
        ),
        SizedBox(height: 12.0.h),
        Text(
          text,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline4,
        ),
        SizedBox(height: 16.0.h),
      ],
    );
  }
}
