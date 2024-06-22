import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_bin1/shared/componants/constant/color.dart';
import 'package:i_bin1/shared/componants/defoualt_custom_button.dart';
import 'package:i_bin1/shared/componants/defoualt_image.dart';

// ignore: must_be_immutable
class BuildPickUp extends StatelessWidget {
   BuildPickUp({
     this.estimatedWeight,
     this.requestTime,
     this.requestNumber,
     this.location,
     this.clientName,
     this.wasteType,
});
   @required String? requestNumber;
  @required String? clientName;
  @required String? location;
  @required String? requestTime;
  @required String? wasteType;
  @required String? estimatedWeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.0.sp),
            boxShadow: [
              BoxShadow(
                color: AppColor.kShadowColor,
                blurRadius: 12.0.sp,
                offset:const Offset(0, 0.90),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w,vertical: 24.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Request Number',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    const Spacer(flex: 1),
                    Text(
                      requestNumber!,
                      textAlign: TextAlign.right,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                ),
                SizedBox(height: 24.h),

                Row(
                  children: [
                    DefoualtImage(
                      'assets/images/Profile_Icon.svg',
                      color: AppColor.kTitleColor,
                    ), SizedBox(width: 4.w),
                    Text(
                      'Client Name',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Text(
                      clientName!,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ],
                ),
                 SizedBox(height: 16.h),

                Row(
                  children: [
                    DefoualtImage(
                      'assets/images/Location_Icon.svg',
                      color: AppColor.kTitleColor,
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      'Location',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Text(
                      location!,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ],
                ),
                SizedBox(height: 16.h),

                Row(
                  children: [
                    DefoualtImage(
                      'assets/images/Calender_Icon.svg',
                      color: AppColor.kTitleColor,
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      'Request Time',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Text(
                      requestTime!,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ],
                ),
                SizedBox(height: 16.h),

                Row(
                  children: [
                    DefoualtImage(
                      'assets/images/Recycling_Icon.svg', // استبدل هذا بمسار الصورة الخاصة بك
                      color: AppColor.kTitleColor,
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Text(
                      'Waste Type',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Text(
                      wasteType!,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ],
                ),
                SizedBox(height: 16.h),

                Row(
                  children: [
                    DefoualtImage(
                      'assets/images/Estimated_Weight.svg', // استبدل هذا بمسار الصورة الخاصة بك
                      color: AppColor.kTitleColor,
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Text(
                      'Estimated Weight',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Text(
                      estimatedWeight!,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ],
                ),
                SizedBox(height: 24.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        child: DefualtCustomButton(
                          function: () {},
                          text: 'Confirm Request',
                          textSize: 11.sp,
                          textColor: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 16.w),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0.sp),
                          border: Border.all(width: 2.0.w, color: Colors.green),
                          color: Colors.white,
                        ),
                        child: DefualtCustomButton(
                          function: () {},
                          background: const LinearGradient(
                            colors: [Colors.white, Colors.white],
                          ),
                          text: 'Contact With Client',
                          textSize: 11.sp,
                          textColor: Colors.green,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 16.h),
      ],
    );
  }
}
