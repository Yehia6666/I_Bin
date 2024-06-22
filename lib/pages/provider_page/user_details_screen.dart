import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_bin1/pages/provider_page/user_screen_provider/user_screen_provider.dart';
import 'package:i_bin1/shared/componants/constant/color.dart';
import 'package:i_bin1/shared/componants/defoualt_custom_button.dart';
import 'package:i_bin1/shared/componants/defoualt_image.dart';
import 'package:i_bin1/shared/componants/defoualt_linear_perecent.dart';

class UserDetailsScreen extends StatefulWidget {
  const UserDetailsScreen({super.key});

  static String id = 'UserDetailsScreen' ;

  @override
  State<UserDetailsScreen> createState() => _UserDetailsScreenState();
}

class _UserDetailsScreenState extends State<UserDetailsScreen> {
  // int _selectedIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: (){
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) =>const UserScreenProvider()),
              );
        }, icon:const Icon(Icons.arrow_back_ios_new_rounded,color: Colors.green,),
        ),

        title: Text(
          'User details',
          style:  Theme.of(context).textTheme.headline1,
        ),
        centerTitle: true,

      ),

      body:Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 40.h,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    CircleAvatar(
                      radius: 78.0.sp,
                      backgroundColor: Colors.green,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 4.w, bottom: 4.h),
                      child: CircleAvatar(
                        radius: 74.0.sp,
                        backgroundColor: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 8.w, bottom: 8.h,),
                      child: CircleAvatar(
                        radius: 70.0.sp,
                        backgroundImage:const AssetImage (
                          'assets/images/yehia.png',
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(bottom: 7.h,
                          right: 7.w,),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 16.sp,
                        child:const Icon(Icons.camera_alt_outlined ,
                          color: Colors.green,),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.h, right: 9.w,),
                      child: CircleAvatar(
                          backgroundColor: Colors.green,
                          radius: 6.sp,
                          child: Icon(Icons.add, color: Colors.white,size: 10.sp,)),
                    )

                  ],
                ),

                 Text(
                  'Yehia Reda',
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  'Client ID: 9867543',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: AppColor.kGrayColor,
                    fontSize: 12.sp,
                    fontFamily: 'Readex',
                    fontWeight: FontWeight.w500,
                  ),
                ),

                SizedBox(
                  height: 40.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration:ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14.sp),
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
                          padding: EdgeInsets.symmetric(vertical: 20.h),
                          child: Column(
                            children: [
                              Text(
                                'Total Requests',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: AppColor.kGrayColor,
                                  fontSize: 14.sp,
                                  fontFamily: 'Readex',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              DefoualtImage('assets/images/Shipping_Icon.svg'),
                              SizedBox(
                                height: 8.h,
                              ),
                              Text(
                                '25 Request',
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.headline6,
                              ),
                            ],
                          ),
                        ) ,
                      ),
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    Expanded(
                      child: Container(
                        decoration:ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14.sp),
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
                          padding: EdgeInsets.symmetric(vertical: 20.h),
                          child: Column(
                            children: [
                              Text(
                                'Total Donations',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: AppColor.kGrayColor,
                                  fontSize: 14.sp,
                                  fontFamily: 'Readex',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              DefoualtImage('assets/images/Donate_Icon_user_details.svg'),
                              SizedBox(
                                height: 8.h,
                              ),
                              Text(
                                '15 Donation',
                                textAlign: TextAlign.center,
                                style:Theme.of(context).textTheme.headline6,
                              ),
                            ],
                          ),
                        ) ,
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 16.h,
                ),
                Container(
                  width: double.infinity,
                  decoration:ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.sp),
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
                    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 22.h,),
                    child:  Column(
                      children: [
                         Row(
                          children: [
                            Text(
                              'Total Points',
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            const Spacer(
                              flex: 1,
                            ),
                            Text(
                              '1200',
                              style:Theme.of(context).textTheme.headline6,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        DefualtCustomButton(
                          function: (){},
                          text: 'Add Points',
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 24.h,
                ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                     Text(
                      'Requests Details ',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                ),

                 SizedBox(
                  height: 16.h,
                ),
                Container(
                  width: double.infinity,
                  decoration:ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.sp),
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
                    padding: EdgeInsets.all(16.sp),
                    child: Column(
                      children: [
                         Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Organic Waste',
                              style: Theme.of(context).textTheme.headline2,
                            ),
                           const Spacer(
                              flex: 1,
                            ),
                            Text(
                              '40%',
                              style: Theme.of(context).textTheme.headline2,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Estimated Weight',
                              style: Theme.of(context).textTheme.headline2,
                            ),
                           const Spacer(
                              flex: 1,
                            ),
                            Text(
                              '32 Kg',
                              style: Theme.of(context).textTheme.headline2,
                            ),

                          ],
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        DefoualtLinearPerecent(
                          indicatorPerecent1: 0.40,
                          height: 5.h,
                          indicatorColor: Colors.green,
                        ),

                        SizedBox(
                          height: 12.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'In-Organic Waste',
                              style: Theme.of(context).textTheme.headline2,
                            ),
                           const Spacer(
                              flex: 1,
                            ),
                            Text(
                              '30%',
                              style: Theme.of(context).textTheme.headline2,
                            ),
                          ],
                        ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Estimated Weight',
                              style: Theme.of(context).textTheme.headline2,
                            ),
                           const Spacer(
                              flex: 1,
                            ),
                            Text(
                              '24 Kg',
                              style: Theme.of(context).textTheme.headline2,
                            ),

                          ],
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        DefoualtLinearPerecent(
                          indicatorPerecent1: 0.30,
                          height: 5.h,
                          indicatorColor: Colors.green,
                        ),

                        SizedBox(
                          height: 12.h,
                        ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Metal Waste',
                              style: Theme.of(context).textTheme.headline2,
                            ),
                           const Spacer(
                              flex: 1,
                            ),
                            Text(
                              '20%',
                              style: Theme.of(context).textTheme.headline2,
                            ),
                          ],
                        ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Estimated Weight',
                              style: Theme.of(context).textTheme.headline2,
                            ),
                           const Spacer(
                              flex: 1,
                            ),
                            Text(
                              '8 Kg',
                              style: Theme.of(context).textTheme.headline2,
                            ),

                          ],
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        DefoualtLinearPerecent(
                          indicatorPerecent1: 0.20,
                          height: 5,
                          indicatorColor: Colors.green,
                        ),

                        SizedBox(
                          height: 12.h,
                        ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Other Waste',
                              style: Theme.of(context).textTheme.headline2,
                            ),
                           const Spacer(
                              flex: 1,
                            ),
                            Text(
                              '10%',
                              style: Theme.of(context).textTheme.headline2,
                            ),
                          ],
                        ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Estimated Weight',
                              style: Theme.of(context).textTheme.headline2,
                            ),
                           const Spacer(
                              flex: 1,
                            ),
                            Text(
                              '2 Kg',
                              style: Theme.of(context).textTheme.headline2,
                            ),

                          ],
                        ),
                         SizedBox(
                          height: 4.h
                        ),
                        DefoualtLinearPerecent(
                          indicatorPerecent1: 0.10,
                          height: 5.h,
                          indicatorColor: Colors.green,
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 48.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Donations Details ',
                      style: TextStyle(
                        color: AppColor.kTitleColor,
                        fontSize: 16.sp,
                        fontFamily: 'Readex',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 16.h,
                ),
                Container(
                  width: double.infinity,
                  decoration:ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.sp),
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
                    padding: EdgeInsets.all(16.sp),
                    child: Column(
                      children: [
                         Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Food',
                              style: Theme.of(context).textTheme.headline2,
                            ),
                            const Spacer(
                              flex: 1,
                            ),
                            Text(
                              '40%',
                              style: Theme.of(context).textTheme.headline2,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        DefoualtLinearPerecent(
                          indicatorPerecent1: 0.40,
                          height: 5.h,
                          indicatorColor: Colors.green,
                        ),

                        SizedBox(
                          height: 12.h,
                        ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Clothes',
                              style:Theme.of(context).textTheme.headline2,
                            ),
                            const Spacer(
                              flex: 1,
                            ),
                            Text(
                              '30%',
                              style: Theme.of(context).textTheme.headline2,
                            ),

                          ],
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        DefoualtLinearPerecent(
                          indicatorPerecent1: 0.30,
                          height: 5.h,
                          indicatorColor: Colors.green,
                        ),

                        SizedBox(
                          height: 12.h,
                        ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Money',
                              style: Theme.of(context).textTheme.headline2,
                            ),
                           const Spacer(
                              flex: 1,
                            ),
                            Text(
                              '20%',
                              style: Theme.of(context).textTheme.headline2,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        DefoualtLinearPerecent(
                          indicatorPerecent1: 0.20,
                          height: 5.h,
                          indicatorColor: Colors.green,
                        ),

                        SizedBox(
                          height: 12.h,
                        ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Books',
                              style: Theme.of(context).textTheme.headline2,
                            ),
                           const Spacer(
                              flex: 1,
                            ),
                            Text(
                              '10%',
                              style: Theme.of(context).textTheme.headline2,
                            ),

                          ],
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        DefoualtLinearPerecent(
                          indicatorPerecent1: 0.10,
                          height: 5.h,
                          indicatorColor: Colors.green,
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 40.h,
                ),
                DefualtCustomButton(
                  function: (){},
                  background:const LinearGradient(
                    colors: [ Color(0xFFEB3929),  Color(0xFFEB3929),],),
                  text: 'Delete User',
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
