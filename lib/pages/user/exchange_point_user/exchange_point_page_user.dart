import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_bin1/pages/user/exchange_point_user/pointer_container.dart';
import 'package:i_bin1/shared/componants/constant/color.dart';
import 'package:i_bin1/shared/componants/defoualt_custom_button.dart';
import 'package:i_bin1/shared/componants/defoualt_image.dart';

class ExchangePointUser extends StatefulWidget {
  const ExchangePointUser({Key? key}) : super(key: key);
  static const String id = 'ExchangePointUser';

  @override
  State<ExchangePointUser> createState() => _ExchangePointUserState();
}

class _ExchangePointUserState extends State<ExchangePointUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 1.0,
        leading: Padding(
          padding: EdgeInsets.all(16.0.w),
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.green,
            size: 24.0.sp,
          ),
        ),
        title: Text(
          'Exchange points',
          textAlign: TextAlign.center,
          style:  Theme.of(context).textTheme.headline1,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0.w,vertical: 24.h),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Point overview',
                  style: TextStyle(
                    color: AppColor.kTitleColor,
                    fontSize: 16.sp,
                    fontFamily: 'Readex',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 24.0.h),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0.sp),
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
                  // Applying internal Padding
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.0.sp, vertical: 32.0.sp),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                DefoualtImage(
                                  'assets/images/Medal_Icon.svg',
                                  height: 24.0.h,
                                  color: Colors.green,
                                ),
                                SizedBox(height: 8.0.h),
                                Text(
                                  '415 Points ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: AppColor.kTitleColor,
                                    fontSize: 16.sp,
                                    fontFamily: 'Readex',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Text('=',style: TextStyle(
                              fontSize: 16.0.sp,
                              color: AppColor.kTitleColor,
                              fontFamily: 'Readex',
                              fontWeight: FontWeight.w500,
                            ),
                            ),
                            Column(
                              children: [
                                DefoualtImage(
                                  'assets/images/wallet 1.svg',
                                  height: 24.0.sp,
                                  color: Colors.green,
                                ),
                                SizedBox(height: 8.0.h),
                                Text(
                                  '25,5 EGP ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: AppColor.kTitleColor,
                                    fontSize: 16.sp,
                                    fontFamily: 'Readex',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 24.0.h),
                        DefualtCustomButton(
                         function: (){},
                         text: 'Exchange Now',
                       ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 24.0.h),
                Text(
                  'Our partners',
                  style: TextStyle(
                    color: AppColor.kTitleColor,
                    fontSize: 16.sp,
                    fontFamily: 'Readex',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Redeem Your points at any of our partner',
                  style: TextStyle(
                    color: AppColor.kGrayColor,
                    fontSize: 12.sp,
                    fontFamily: 'Readex',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 24.0.h),
              Container(
                width: double.infinity,
                child: const Row(
                   children: [
                     PartnerContainer(
                       imageName: 'assets/images/surface1.svg',
                       text: 'B-Tech',

                     ),
                Spacer(
                  flex: 1,
                ),
                     PartnerContainer(
                       imageName: 'assets/images/mongine.svg',
                       text: 'Monginis',

                     ),
                   ],
                 ),
              ),
                SizedBox(width: 16.0.w), // Add space between the columns
               Container(
                 width: double.infinity,
                 child: const Row(
                    children: [
                      PartnerContainer(
                        imageName: 'assets/images/Avatar.svg',
                        text: 'Bazooka',
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      PartnerContainer(
                        imageName: 'assets/images/Avatar.svg',
                        text: 'Town Team',
                      ),
                    ],
                  ),
               ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
