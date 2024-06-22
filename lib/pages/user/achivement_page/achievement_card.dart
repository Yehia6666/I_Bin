// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_bin1/shared/componants/constant/color.dart';
import 'package:i_bin1/shared/componants/defoualt_image.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

// ignore: must_be_immutable
class AchievementCard extends StatefulWidget {
  AchievementCard({this.imageUrl, this.titleText,this.donationValue,this.maxValIndicator,super.key, });

   String? imageUrl;
   String? titleText;
  @required  double? maxValIndicator;
  @required  double? donationValue ;

  @override
  _AchievementCardState createState() => _AchievementCardState();
}
class _AchievementCardState extends State<AchievementCard> {
  late double _currentDonationValue;

  @override
  void initState() {
    super.initState();
    _currentDonationValue = widget.donationValue ?? 0;
  }

  @override
  Widget build(BuildContext context) {
   return Padding(
     padding: EdgeInsets.only(bottom: 16.h),
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
       child: Padding(
         padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
         child: Row(
           mainAxisAlignment:MainAxisAlignment.center,
           children: [
             DefoualtImage(
               widget.imageUrl,
               height: 100.h,
               width: 100.w,
             ),
             SizedBox(
               width: 8.w,
             ),
             Column(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(
                   widget.titleText!,
                   style: TextStyle(
                     color: AppColor.kTitleColor,
                     fontSize: 10.sp,
                     fontFamily: 'Readex',
                     fontWeight: FontWeight.bold,
                   ),
                 ),
                 SizedBox(
                   height: 10.h,
                 ),
                 Row(
                   children: [
                  Text(
                       'Total Score',
                       style: TextStyle(
                         color: AppColor.kGrayColor,
                         fontSize: 12.sp,
                         fontFamily: 'Readex',
                         fontWeight: FontWeight.w400,
                       ),
                     ),
                     SizedBox(
                       width: 60.w,
                     ),
                     Text(
                       (_currentDonationValue).toInt().toString(),
                       style: TextStyle(
                         color: AppColor.kGrayColor,
                         fontSize: 12.sp,
                         fontFamily: 'Readex',
                         fontWeight: FontWeight.w400,
                       ),
                     ),
                      Text(
                       "/${widget.maxValIndicator!.toInt().toString()}",
                       style: TextStyle(
                         color: AppColor.kTitleColor,
                         fontSize: 12.sp,
                         fontFamily: 'Readex',
                         fontWeight: FontWeight.w400,
                       ),
                     ),
                   ],
                 ),
                  SizedBox(
                   height: 4.h,
                 ),
                 Container(
                   height: 8.h,
                   width: 190.w,
                   child: LinearPercentIndicator(
                     animation: true,
                     animationDuration: 1000,
                     percent: widget.donationValue!/100 ,
                     lineHeight: 5.h,
                     progressColor: Colors.green,
                     barRadius: Radius.circular(25.sp),
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
















// import 'package:flutter/material.dart';
// import 'package:i_bin1/shared/componants/defoualt_image.dart';
//
// class AchievementCard extends StatelessWidget {
//   AchievementCard({this.imageUrl, this.titleText, this.donationValue});
//   String? imageUrl ;
//   String? titleText ;
//   double? donationValue = 80;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 16),
//       child: Stack(
//         children: [
//           Container(
//             decoration: ShapeDecoration(
//               color: Colors.white,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(14.0),
//               ),
//               shadows: [
//                 BoxShadow(
//                   color: Color(0x1E013216),
//                   blurRadius: 12.0,
//                   offset: Offset(0, 0.90),
//                 ),
//               ],
//             ),
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 8),
//               child: Row(
//                 children: [
//                   DefoualtImage(imageUrl ,
//                     height: 100,
//                     width: 100,
//                   ),
//                   SizedBox(
//                     width: 8,
//                   ),
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         titleText!,
//                         style: TextStyle(
//                           color: AppColor.kTitleColor,
//                           fontSize: 10,
//                           fontFamily: 'Readex',
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Row(
//                         children: [
//                           Text(
//                             'Total Score',
//                             style: TextStyle(
//                               color: Color(0xFFB5B5B5),
//                               fontSize: 12,
//                               fontFamily: 'Readex',
//                               fontWeight: FontWeight.w400,
//                             ),
//                           ),
//                           SizedBox(
//                             width: 70,
//                           ),
//                           Text(
//                             '70',
//                             style: TextStyle(
//                               color: Color(0xFFB5B5B5),
//                               fontSize: 12,
//                               fontFamily: 'Readex',
//                               fontWeight: FontWeight.w400,
//                             ),
//                           ),
//                           Text(
//                             '/100',
//                             style: TextStyle(
//                               color: Color(0xFF013216),
//                               fontSize: 12,
//                               fontFamily: 'Readex',
//                               fontWeight: FontWeight.w400,
//                             ),
//                           ),
//                         ],
//                       ),
//                       Slider(
//                         value: donationValue!,
//                         min: 0,
//                         max: 100,
//                         onChanged: (double value) {
//                           // setState(() {
//                           //   donationValue = value;
//                           // });
//                         },
//                         activeColor: Colors.green,
//                         inactiveColor: Colors.grey,
//
//                       ),
//
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//
//         ],
//       ),
//     );
//   }
// }
