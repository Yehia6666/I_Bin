import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:i_bin1/pages/onbording/loadingPage.dart';
import 'package:i_bin1/pages/provider_page/exchange_point/exchange_point.dart';
import 'package:i_bin1/pages/provider_page/help_support/help_support_page_provider.dart';
import 'package:i_bin1/pages/provider_page/home_provider.dart';
import 'package:i_bin1/pages/provider_page/requests_statistics.dart';
import 'package:i_bin1/shared/componants/constant/color.dart';
import 'package:i_bin1/shared/componants/defoualt_custom_button.dart';
import 'package:i_bin1/shared/componants/defoualt_image.dart';

class ProfileProviderScreen extends StatefulWidget {
  const ProfileProviderScreen({super.key});
  static String id = 'ProfileProviderScreen' ;

  @override
  State<ProfileProviderScreen> createState() => _ProfileProviderScreenState();
}

class _ProfileProviderScreenState extends State<ProfileProviderScreen> {
  bool switchValue = false;
  int _selectedIndex = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: Text(
          'Profile',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline1,
        ),
        centerTitle: true,
     actions: [
     IconButton(
     icon: Icon(
       Icons.logout,
       size: 30.sp,
       color: Colors.red,
     ),
      onPressed: () {
        showDialog(context: context, builder: (context){
          return  AlertDialog(
            title: Text('Leave Profile ?' ,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColor.kTitleColor,
                fontSize: 18.sp,
                fontFamily: 'Readex',
                fontWeight: FontWeight.w600,
              ),
            ),
            content: Text('Are You Need Leave Your Profile ..,? ' ,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColor.kTitleColor,
                fontSize: 16.sp,
                fontFamily: 'Readex',
                fontWeight: FontWeight.w500,
              ),
            ),
            backgroundColor: Colors.white,
            alignment: Alignment.center,
            actions: [
              DefualtCustomButton(
                function: (){
                  Navigator.pop(context);

                },
                text: 'Cancel' ,
              ),
              SizedBox(
                height: 8.h,
              ),
              DefualtCustomButton(
                function: (){
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) =>const LoadingPage()),
                  );
                },
                text: 'Confirm' ,
                background:const LinearGradient(
                  colors: [ Color(0xFFEB3929),  Color(0xFFEB3929),],),
              ),

            ],
          );
        }
        );
      },
    ),
    ],
        leading: IconButton(onPressed: (){
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) =>const HomeProvider()),
          );
        }, icon:const Icon(Icons.arrow_back_ios_new_rounded,color: Colors.green,)),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body:Container(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 80.h),
          child: Stack(
            children: [
              SvgPicture.asset('assets/images/Circles_Shape.svg'),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      CircleAvatar(
                        radius: 70.sp,
                        backgroundColor: Colors.greenAccent,
                      ),
                      DefoualtImage('assets/images/Profile_Icon.svg',
                      color: Colors.black87,
                        width: 70.w,
                        height: 70.h,
                      ),
                    ],
                  ),
                  Text(
                    'Yehia Reda',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  Text(
                    'yehia01128445409@gmail.com',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: AppColor.kGrayColor,
                      fontSize: 12.sp,
                      fontFamily: 'Readex',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(
                    flex: 2,
                  ),

                  buildProfileOption('Requests Statistics',
                      'assets/images/Statistics_Icon.svg',
                      function: (){
                   Navigator.pushNamed(context, RequestsStatisticsPage.id);
                  }),

                  buildProfileOption('Exchange points', 'assets/images/Point_Icon.svg',function: (){
                    Navigator.pushNamed(context, ExchangePointPage.id);
                  }),

                  buildProfileOption('App notifications',
                    'assets/images/Notification_Icon.svg',
                    defaultIcon: Icons.toggle_off_sharp,),

                  buildProfileOption('Help & Support',
                      'assets/images/Support_Icon.svg',
                      function: (){
                    Navigator.pushNamed(context, HelpSupportPageProvider.id);
                  }),

                  const Spacer(
                    flex: 3,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

         );
  }

  Widget buildProfileOption(
      String text,
      String iconPath,
      {double iconSize = 20, IconData defaultIcon = Icons.arrow_forward_ios, Function()? function})

  {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w,),
      child: Column(
        children: [
          InkWell(
            onTap: function,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 8.w),
                        child: SvgPicture.asset(
                          iconPath,
                          width: (iconSize).w,
                          height: (iconSize).h,
                          color: AppColor.kTitleColor,
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Text(
                        text,
                        style:Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                  if (text == 'App notifications')
                    Transform.scale(
                      scale: 0.8.sp,
                      child: Switch(
                        value: switchValue,
                        onChanged: (value) {
                          setState(() {
                            switchValue = value;
                          });
                        },
                        activeColor: Colors.green,
                      ),
                    ),
                  if (text != 'App notifications')
                    Icon(
                      defaultIcon,
                      color: Colors.green,
                      size: (iconSize).sp,

                    ),
                ],
              ),
            ),
          if (text != 'Help & Support')
            Divider(
              color: Colors.grey,
              thickness: 1.sp,
              indent: 16.w,
              endIndent: 16.w,
            ),
        ],
      ),
    );
  }
}
