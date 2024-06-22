import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_bin1/pages/user/home_user_page/home_user.dart';
import 'package:i_bin1/pages/user/notification_page/notifications_page.dart';
import 'package:i_bin1/shared/componants/constant/color.dart';
import 'package:i_bin1/shared/componants/defoualt_circular_perecent.dart';
import 'package:i_bin1/shared/componants/defoualt_image.dart';



class BinPage extends StatefulWidget {
  const BinPage({Key? key}) : super(key: key);

  static String id = 'BinPage';

  @override
  _BinPageState createState() => _BinPageState();
}

class _BinPageState extends State<BinPage> {
  DateTime selectedDate = DateTime.now();
  final textOneCtr1 = TextEditingController();
  bool remindMe = false;
  // int _currentIndex = 1;
  LinearGradient background =const LinearGradient(
    begin: Alignment(1.00, -0.02),
    end: Alignment(-1, 0.02),
    colors: [Color(0xFF00D421) , Color(0xFF03B04E) ],
  );
  double indiatorPerecent1 = 0.50 ;

  bool isSelectedDonations = false;
  bool isSelectedPick = false;
  int _selectedIndex = 1;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Bins',
          style: TextStyle(
            color: AppColor.kTitleColor,
            fontSize: 20.sp,
            fontFamily: 'Readex',
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        leading:  InkWell(
          onTap: (){
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) =>const HomeUserPage()),
            );
          },
          child:  Padding(
            padding: EdgeInsets.only(left: 16.sp),
            child: Stack(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 24.sp,
                ),
                Padding(
                  padding:  EdgeInsets.only(top: 1.h, left: 2.w , right: 2.w),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 23.sp,
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: 8.h,left: 4.w, right: 4.w),
                  child: CircleAvatar(
                    radius: 16.sp,
                    backgroundImage: AssetImage('assets/images/yehia.png'),
                  ),
                )
              ],
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: InkWell(
              onTap: (){
                Navigator.pushNamed(context, NotificationsPage.id);
              },
              child: DefoualtImage('assets/images/Notification_Icon.svg' ,
                color: Colors.green,
                height: 24.h,
              ),
            ),
          ),
        ],
        elevation: 1.0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 8.w),
                  child: Container(
                    child: DefoualtImage('assets/images/Level_Bin_Icon.svg'
                    ),
                  ),
                ),

                Text(
                  'Basket fullness level',
                  style: TextStyle(
                    color: AppColor.kTitleColor,
                    fontSize: 16.sp,
                    fontFamily: 'Readex',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(top: 14.h),
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
                            padding: EdgeInsets.all(16.0.sp),
                            child: Column(
                              children: [
                                Text(
                                  'Organic Bin',
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: AppColor.kTitleColor,
                                    fontSize: 14.sp,
                                    fontFamily: 'Readex',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                DefoualtImage(
                                  'assets/images/High_Bin_Icon.svg',
                                  width: 48.w,
                                  height: 48.h,
                                ),
                                  SizedBox(height: 16.0.h),
                                DefoualtCircularPerecent(
                                  indicatorPerecent1: 0.80,
                                  indicatorColor: Colors.red,
                                ),
                              ],
                            ),

                          ),

                        ),
                      ),
                    ),
                     SizedBox(width: 16.0.w),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(top: 14.h),
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
                            padding: EdgeInsets.all(16.0.sp),
                            child:Column(
                              children: [
                                Text(
                                  'In-Organic Bin',
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: AppColor.kTitleColor,
                                    fontSize: 14.sp,
                                    fontFamily: 'Readex',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                DefoualtImage(
                                  'assets/images/Medium_Bin_Icon.svg',
                                  width: 48.w,
                                  height: 48.h,
                                ),
                                const SizedBox(height: 16.0),
                                DefoualtCircularPerecent(
                                  indicatorPerecent1: 0.62,
                                  indicatorColor: Colors.yellow,
                                ),
                              ],
                            ),

                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 14.h),
                      child: Container(
                        width: 165.w,
                        height: 225.h,
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
                          padding: EdgeInsets.all(16.0.sp),
                          child: Center(
                            child: Column(
                              children: [
                                Text(
                                  'Metal Bin',
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: AppColor.kTitleColor,
                                    fontSize: 14.sp,
                                    fontFamily: 'Readex',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                DefoualtImage(
                                  'assets/images/LowBin.svg',
                                  width: 48.w,
                                  height: 48.h,
                                ),
                                const Spacer(
                                  flex: 1,
                                ),
                                DefoualtCircularPerecent(
                                  indicatorPerecent1: 0.35,
                                  indicatorColor: Colors.green,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 160.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    gradient:const LinearGradient(
                      begin: Alignment(1.00, -0.02),
                      end: Alignment(-1, 0.02),
                      colors: [Color(0xFF00D421) , Color(0xFF03B04E) ],
                    ),
                    borderRadius: BorderRadius.circular(14.sp),

                  ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    DefoualtImage('assets/images/Play_Video_Icon.svg',
                    color: Colors.white,
                    width: 18.w,
                    ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Text('Watch Bin Tutorial',
                      style: TextStyle(
                        fontSize: 10.sp,
                        color: Colors.white,

                      ),
                      ),
                    ],
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Container(
                  width: 160.w,
                  height: 48.h,
                  decoration: BoxDecoration(
                    gradient:const  LinearGradient(
                      colors: [Colors.white , Colors.white ],
                    ),
                    borderRadius: BorderRadius.circular(14.sp),
                    border: Border.all(
                      color: Colors.red,
                    ),
                  ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DefoualtImage('assets/images/Danger_Icon.svg',
                        color: Colors.red,
                        width: 18.w,
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Text('Report a Lost Bin',
                        style: TextStyle(
                          fontSize: 10.sp,
                          color: Colors.red,

                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

          ],
        ),
      ),

  
    );
  }

  Widget buildSquare({
    required String imageAsset,
    required String title,
    required String subtitle,
    required double imageSize,
  }) {
    return Container(
      width: (imageSize + 40.0).w,
      height: (imageSize + 80.0).h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0.sp),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2.sp,
            blurRadius: 5.sp,
            offset:const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imageAsset, width: imageSize, height: imageSize, color: null),
           SizedBox(height: 8.0.h),
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
            SizedBox(height: 8.0.h),
          Container(
            padding: EdgeInsets.all(8.0.sp),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0.sp),
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            child: Text(
              subtitle,
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
