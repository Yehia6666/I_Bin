
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_bin1/shared/componants/constant/color.dart';
import 'package:i_bin1/shared/componants/defoualt_custom_button.dart';
import 'package:i_bin1/shared/componants/defoualt_image.dart';


// ignore: must_be_immutable
class buildExchangePoint extends StatelessWidget {
   buildExchangePoint({
         this.location,
         this.clientID,
         this.requestNumber,
         this.requestTime,
         this.totalCach,
         this.totalPoint,
       });
  @required String? requestNumber;
  @required String? clientID;
  @required String? location;
  @required String? requestTime;
  @required String? totalPoint;
  @required String? totalCach;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 14.0.sp,right: 14.0.sp,bottom: 24.h, ),
      child: Container(
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
          padding: EdgeInsets.symmetric(horizontal: 14.0.w, vertical: 24.h),
          child: Column(
            children: [
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
                    style:  Theme.of(context).textTheme.bodyText1,
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
                    style:Theme.of(context).textTheme.bodyText1,
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
                    style:Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Row(
                children: [
                  DefoualtImage(
                    'assets/images/Medal_Icon.svg',
                  ),
                  SizedBox(width: 4.w),
                   Text(
                    'Total Point',
                    style:Theme.of(context).textTheme.bodyText1,
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Text(
                    totalPoint!,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Row(
                children: [
                  DefoualtImage(
                    'assets/images/wallet 1.svg',
                  ),
                  SizedBox(width: 4.w),
                   Text(
                    'Total Cach',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Text(
                    totalCach!,
                    style:Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
              SizedBox(height: 24.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: DefualtCustomButton(
                      function: () {},
                      text: 'Confirm Request',
                      textSize: 12.sp,
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Expanded(
                    child: Container(
                      height: 48.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.0.sp),
                        border: Border.all(width: 1.w, color: Colors.grey.shade400),
                      ),
                      child: DefualtCustomButton(
                        function: () {},
                        text: 'Cancel',
                        textSize: 12.sp,
                        textColor: Colors.red,
                        background: const LinearGradient(
                          colors: [Colors.white, Colors.white],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}



// Widget buildExchangePoint({
//   required String requestNumber,
//   required String clientID,
//   required String location,
//   required String requestTime,
//   required String totalPoint,
//   required String totalCach,
//
// }) {
//   return Padding(
//     padding: const EdgeInsets.only(left: 14.0,right: 14.0,bottom: 24, ),
//     child: Container(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(16.0),
//         boxShadow: const [
//           BoxShadow(
//             color: AppColor.kShadowColor,
//             blurRadius: 12.0,
//             offset: Offset(0, 0.90),
//           ),
//         ],
//       ),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 24),
//         child: Column(
//           children: [
//             Row(
//               children: [
//                  Text(
//                   'Request Number',
//                   style: Theme.of(context).textTheme.headline5,
//                 ),
//                 const Spacer(
//                   flex: 1,
//                 ),
//                 Text(
//                   requestNumber,
//                   textAlign: TextAlign.right,
//                   style: Theme.of(context).textTheme.headline5,
//                 ),
//               ],
//             ),
//             const SizedBox(height: 24),
//             Row(
//               children: [
//                 DefoualtImage(
//                   'assets/images/Profile_Icon.svg',
//                   color: AppColor.kTitleColor,
//                 ),
//                 const SizedBox(width: 4),
//                 const Text(
//                   'Client ID',
//                   style: TextStyle(
//                     color: AppColor.kTitleColor,
//                     fontSize: 12,
//                     fontFamily: 'Readex',
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//                 const Spacer(
//                   flex: 1,
//                 ),
//                 Text(
//                   clientID,
//                   textAlign: TextAlign.center,
//                   style:const  TextStyle(
//                     color: AppColor.kTitleColor,
//                     fontSize: 12,
//                     fontFamily: 'Readex',
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 16),
//             Row(
//               children: [
//                 DefoualtImage(
//                   'assets/images/Location_Icon.svg',
//                 ),
//                 const SizedBox(width: 4),
//                 const Text(
//                   'Location',
//                   style: TextStyle(
//                     color: AppColor.kTitleColor,
//                     fontSize: 12,
//                     fontFamily: 'Readex',
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//                 const Spacer(
//                   flex: 1,
//                 ),
//                 Text(
//                   location,
//                   textAlign: TextAlign.center,
//                   style: const TextStyle(
//                     color: AppColor.kTitleColor,
//                     fontSize: 12,
//                     fontFamily: 'Readex',
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 16),
//             Row(
//               children: [
//                 DefoualtImage(
//                   'assets/images/Calender_Icon.svg',
//                 ),
//                 const SizedBox(width: 4),
//                 const Text(
//                   'Request Time',
//                   style: TextStyle(
//                     color: AppColor.kTitleColor,
//                     fontSize: 12,
//                     fontFamily: 'Readex',
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//                 const Spacer(
//                   flex: 1,
//                 ),
//                 Text(
//                   requestTime,
//                   style: const TextStyle(
//                     color: AppColor.kTitleColor,
//                     fontSize: 12,
//                     fontFamily: 'Readex',
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 16),
//             Row(
//               children: [
//                 DefoualtImage(
//                   'assets/images/Medal_Icon.svg',
//                 ),
//                 const SizedBox(width: 4),
//                 const Text(
//                   'Total Point',
//                   style:TextStyle(
//                     color: AppColor.kTitleColor,
//                     fontSize: 12,
//                     fontFamily: 'Readex',
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//                 const Spacer(
//                   flex: 1,
//                 ),
//                 Text(
//                   totalPoint,
//                   style: const TextStyle(
//                     color: AppColor.kTitleColor,
//                     fontSize: 12,
//                     fontFamily: 'Readex',
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 16),
//             Row(
//               children: [
//                 DefoualtImage(
//                   'assets/images/wallet 1.svg',
//                 ),
//                 const SizedBox(width: 4),
//                 const Text(
//                   'Total Cach',
//                   style: TextStyle(
//                     color: AppColor.kTitleColor,
//                     fontSize: 12,
//                     fontFamily: 'Readex',
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//                 const Spacer(
//                   flex: 1,
//                 ),
//                 Text(
//                   totalCach,
//                   style: const TextStyle(
//                     color: AppColor.kTitleColor,
//                     fontSize: 12,
//                     fontFamily: 'Readex',
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 24),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Expanded(
//                   child: defualtButton(
//                     function: () {},
//                     text: 'Confirm Request',
//                     textSize: 12,
//                   ),
//                 ),
//                 const SizedBox(width: 12),
//                 Expanded(
//                   child: Container(
//                     height: 48,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(14.0),
//                       border: Border.all(width: 1, color: Colors.grey.shade400),
//                     ),
//                     child: defualtButton(
//                       function: () {},
//                       text: 'Cancel',
//                       textSize: 12,
//                       textColor: Colors.red,
//                       background: const LinearGradient(
//                         colors: [Colors.white, Colors.white],
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }
