import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_bin1/pages/user/point_borad_user_page/point_user_contaner.dart';
import 'package:i_bin1/shared/componants/constant/color.dart';
import 'package:i_bin1/shared/componants/defoualt_image.dart';

class PointBoradUserScreen extends StatelessWidget {
  const PointBoradUserScreen({super.key});
  static String id = 'PointBoradUserScreen' ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Colors.white,
        title: Text(
          'Point Border',
          style:  Theme.of(context).textTheme.headline1,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: Stack(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 22.sp,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 2.h, left: 2.w),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 20.sp,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 4.h,left: 4.w),
                  child: CircleAvatar(
                    radius: 18.sp,
                    backgroundImage: AssetImage('assets/images/yehia.png'),
                  ),
                )
              ],
            ),
          ),
        ],
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon:const Icon(Icons.arrow_back_ios_new_rounded,color: Colors.green,)),

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 24.h),
                child: Row(
                  children: [
                    Container(
                      width: 150.w,
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
                        padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 16.h),
                        child: Column(
                          children: [
                            Text('Total Rewards',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColor.kGrayColor,
                                fontSize: 14.sp,
                                fontFamily: 'Readex',
                                fontWeight: FontWeight.w400,
                              ),),
                            SizedBox(
                              height: 8.h,
                            ),
                            DefoualtImage('assets/images/Medal_Icon.svg' ,
                              width: 20.w,
                              height: 20.h,
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Text(
                              '415 Points ',
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.headline4,
                            )
                          ],
                        ),
                      ),
                    ),
                    const Spacer(
                     flex: 1,
                    ),
                    Container(
                      width: 150.w,
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
                        padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 16.h),
                        child: Column(
                          children: [
                            Text('Time Left',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColor.kGrayColor,
                                fontSize: 14.sp,
                                fontFamily: 'Readex',
                                fontWeight: FontWeight.w400,
                              ),),
                             SizedBox(
                              height: 8.h,
                            ),
                            DefoualtImage('assets/images/Time_Icon.svg' ,
                              width: 20.w,
                              height: 20.h,
                            ),
                             SizedBox(
                              height: 8.h,
                            ),
                            Text(
                              '5 Day',
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.headline4,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ContainerUserProvider(
                iconRate: 'assets/images/First_Place_Icon.svg' ,
                userNum: '1',
                numColor: Colors.white10,
                imageProfile: 'assets/images/youssef.svg',
                userNameProfile: 'Youssef Gagab',
                pointRate: '1200',
              ),
              ContainerUserProvider(
                iconRate: 'assets/images/Sceand_Place_Icon.svg' ,
                userNum: '2',
                numColor: Colors.white10,
                imageProfile: 'assets/images/yehia.png',
                userNameProfile: 'Yehia Reda',
                pointRate: '1200',
              ),
              ContainerUserProvider(
                iconRate: 'assets/images/Third_Place_Icon.svg' ,
                userNum: '3',
                numColor: AppColor.kTitleColor,
                imageProfile: 'assets/images/elfar.svg',
                userNameProfile: 'Youssef Elfar',
                pointRate: '1200',
              ),
              ContainerUserProvider(
                iconRate: 'assets/images/Number.svg' ,
                imageProfile: 'assets/images/ammer.svg',
                userNum: '4',
                numColor:  AppColor.kTitleColor,
                userNameProfile: 'Youssef Ameer',
                pointRate: '1200',
              ),
              ContainerUserProvider(
                iconRate: 'assets/images/Number.svg' ,
                imageProfile: 'assets/images/maram.svg',
                userNum: '5',
                numColor: AppColor.kTitleColor,
                userNameProfile: 'Maram Mohamed',
                pointRate: '1200',
              ),
              ContainerUserProvider(
                iconRate: 'assets/images/Number.svg' ,
                imageProfile: 'assets/images/salma.svg',
                userNum: '6',
                numColor: AppColor.kTitleColor,
                userNameProfile: 'Salma Ibrahim',
                pointRate: '1200',
              ),


            ],
          ),
        ),
      ),
    );
  }
}
