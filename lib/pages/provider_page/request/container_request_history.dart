import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_bin1/shared/componants/constant/color.dart';
import 'package:i_bin1/shared/componants/defoualt_image.dart';

// ignore: must_be_immutable
class BuildHistory extends StatelessWidget {
   BuildHistory({
     this.location,
     this.requestNumber,
     this.requestTime,
     this.clientID,
     this.estimatedWeight,
     this.wastType,
});
@required String? requestNumber;
@required String? clientID;
@required String? location;
@required String? requestTime;
@required String? wastType;
@required String? estimatedWeight;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 14.0.w,right: 14.0.w,bottom: 24.h, ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0.sp),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3.sp,
              blurRadius: 7.sp,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.0.w, vertical: 24.h),
          child: Column(
            children: [
              SizedBox(height: 8.h),
              Row(
                children: [
                  Text(
                    'Request Number',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Text(
                    requestNumber!,
                    textAlign: TextAlign.right,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ],
              ),
              SizedBox(height: 24.h),
              Row(
                children: [
                  DefoualtImage(
                    'assets/images/Profile_Icon.svg',
                    color: AppColor.kTitleColor,
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    'Client ID',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Text(
                  clientID!,
                    textAlign: TextAlign.center,
                    style:Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Row(
                children: [
                  DefoualtImage(
                    'assets/images/Location_Icon.svg',
                  ),
                  SizedBox(width: 4.w),
                   Text(
                    'Location',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Text(
                    location!,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Row(
                children: [
                  DefoualtImage(
                    'assets/images/Calender_Icon.svg',
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    'Request Time',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Text(
                    requestTime!,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Row(
                children: [
                  DefoualtImage(
                    'assets/images/svgexport-18 (8) 1.svg',
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    'Waste Type',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Text(
                    wastType!,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Row(
                children: [
                  DefoualtImage(
                    'assets/images/Recycling_Icon.svg',
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    'Estimated Weight',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Text(
                    estimatedWeight!,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
              SizedBox(height: 24.h),
            ],
          ),
        ),
      ),
    );
  }
}
