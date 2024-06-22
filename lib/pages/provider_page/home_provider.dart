
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_bin1/pages/provider_page/request/Requests_History.dart';
import 'package:i_bin1/pages/user/notification_page/notifications_page.dart';
import 'package:i_bin1/shared/componants/constant/color.dart';
import 'package:i_bin1/shared/componants/defoualt_custom_button.dart';
import 'package:i_bin1/shared/componants/defoualt_image.dart';


// class HomeProviderProvider extends StatelessWidget {
//   const HomeProviderProvider({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(create: (context) =>  GetUserCubit(),
//     child:const HomeProvider(),
//     );
//   }
// }


class HomeProvider extends StatefulWidget {
  const HomeProvider({super.key});

  static String id = 'HomeProvider' ;

  @override
  State<HomeProvider> createState() => _HomeProviderState();
}

class _HomeProviderState extends State<HomeProvider> {

  bool isSelectedPick = false ;
  bool isSelectedDonate = false ;
  // int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 220.h,
                  decoration:const BoxDecoration(
                    gradient: AppColor.kPrimaryColor,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 12.h, left: 12.w,),
                        child: Row(
                          children: [
                           const Icon(Icons.location_on_outlined,color: Colors.white,),
                            Text('Zagazig, Egypt' ,
                              style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp,
                              fontFamily: 'Readex',
                              fontWeight: FontWeight.w400,
                            ),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 14.w ,vertical: 12.h),
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.green,
                                  radius: 28.sp,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 2.h, left: 2.w),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 26.sp,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 4.h,left: 4.w),
                                  child: CircleAvatar(
                                    radius: 24.sp,
                                    backgroundImage:const AssetImage('assets/images/yehia.png'),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.w),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   Text(
                                    'Welcome back,',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.sp,
                                      fontFamily: 'Readex',
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                   Text(
                                    'Yehia Reda',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.sp,
                                      fontFamily: 'Readex',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(
                              flex: 1,
                            ),
                            InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, NotificationsPage.id);
                              },
                              child: DefoualtImage('assets/images/Notification_Icon.svg' ,
                                color: Colors.white,
                                height: 24.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 120.h , bottom: 8.h , left: 14.w, right: 14.w),
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
                      padding: EdgeInsets.symmetric(vertical: 16.h ,horizontal: 16.w),
                      child: Column(
                        children: [
                          InkWell(
                            onTap:(){},
                            child: Container(
                              height: 66.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14.sp),
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.green,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(left: 16.w),
                                child: Row(
                                  children: [
                                    DefoualtImage('assets/images/Point_Icon.svg' ,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 16.w,
                                    ),
                                     Text(
                                      'Total points\n415',
                                      style: Theme.of(context).textTheme.headline6,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          InkWell(
                            onTap: (){},
                            child: Container(
                              height: 66.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14.sp),
                                color: Colors.white,
                                border: Border.all(
                                  width: 1.w,
                                  color: Colors.green,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(left: 16.w),
                                child: Row(
                                  children: [
                                    DefoualtImage('assets/images/Recycling_Icon.svg' ,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 16.w,
                                    ),
                                    Text(
                                      'Total items separated\n112',
                                      style: Theme.of(context).textTheme.headline6,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.w),
              child: Column(
                children: [
                  Row(
                    children: [
                      DefoualtImage('assets/images/Location_Icon.svg'),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        'Nearest Requests',
                        style: Theme.of(context).textTheme.headline5,
                      ),

                    ],
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Stack(
                    children: [
                      Container(
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14.0.sp),
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius:BorderRadius.circular(22.sp),
                          child: Image.asset('assets/images/Basemap image.png',),),
                      ),
                      Container(
                        width: double.infinity,
                        child: Padding(
                          padding: EdgeInsets.only(top: 12.h , left: 24.w, right: 24.w,),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 47.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16.0.sp),
                                    border: Border.all(width: 2.0.w ,
                                      color: isSelectedPick ? Colors.green : Colors.grey,
                                    ),
                                  ),
                                  child: DefualtCustomButton(
                                    function: () {
                                     setState(() {
                                       isSelectedPick = true ;
                                       isSelectedDonate = false ;
                                     });
                                    },
                                    text: 'Pick-Up',
                                    textSize: 12.sp,
                                    textColor: isSelectedPick ? Colors.green : AppColor.kTitleColor,
                                    background:const LinearGradient(
                                      colors: [Colors.white, Colors.white],
                                    ),
                                  ),
                                ),
                              ),
                               SizedBox(
                                width:12.w ,
                              ),
                              Expanded(
                                child: Container(
                                  height: 47.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16.0.sp),
                                    border: Border.all(width: 2.0.w ,
                                      color: isSelectedDonate ? Colors.green : Colors.grey,
                                    ),
                                  ),
                                  child: DefualtCustomButton(
                                    function: () {
                                      setState(() {
                                        isSelectedDonate = true;
                                        isSelectedPick = false ;
                                      });
                                    },
                                    text: 'Donations',
                                    textSize: 12.sp,
                                    textColor: isSelectedDonate ? Colors.green : AppColor.kTitleColor,
                                    background:const LinearGradient(
                                      colors: [Colors.white, Colors.white],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  DefualtCustomButton(
                    function: (){
                      Navigator.pushNamed(context, RequestsHistory.id);
                    },
                    text: 'Requests History',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
         );
  }
}
