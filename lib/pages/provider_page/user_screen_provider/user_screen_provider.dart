import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_bin1/core/functions/validinput.dart';
import 'package:i_bin1/pages/user/home_user_page/home_user.dart';
import 'package:i_bin1/pages/user/notification_page/notifications_page.dart';
import 'package:i_bin1/pages/provider_page/user_screen_provider/contaner_user_provider.dart';
import 'package:i_bin1/shared/componants/defoualt_image.dart';
import 'package:i_bin1/shared/componants/defoult_custom_text_form_filed.dart';

class UserScreenProvider extends StatefulWidget {
  const UserScreenProvider({super.key});
  static String id = 'UserScreenProvider' ;

  @override
  State<UserScreenProvider> createState() => _UserScreenProviderState();
}

class _UserScreenProviderState extends State<UserScreenProvider> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Users',
          style: Theme.of(context).textTheme.bodyText2,
        ),
        centerTitle: true,
        leading:  InkWell(
          onTap: (){
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) =>const HomeUserPage()),
            );
          },
          child: Padding(
            padding:  EdgeInsets.only(left: 16.w),
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
                  child:const CircleAvatar(
                    radius: 16,
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 24.h),
                child: DefaultCustomTextFromField(
                  validator: (val){
                    return validInput(val!, 4, 15 , "username") ;
                  },
                  type: TextInputType.text,
                  hint: 'Search with ID or Name',
                  prefix:  Icon(Icons.search,
                    size: 36.sp,
                  ),),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.h),
                child: Container(
                  width: double.infinity,
                  child: Row(
                    children: [
                      Text(
                        'Number of users ',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                     const Spacer(
                        flex: 1,
                      ),
                      Text(
                        '112',
                        textAlign: TextAlign.right,
                        style:Theme.of(context).textTheme.headline4,
                      ),

                    ],
                  ),
                ),
              ),

              DefoultContainerUserProvider(
                userNum: '1',
                pointRate: '900',
                userName: 'Yehia Reda',
                userImage: 'assets/images/yehia.png',
              ),
              DefoultContainerUserProvider(
                userNum: '2',
                pointRate: '850',
                userName: 'Youssef Ragab',
                userImage: 'assets/images/youssef.svg',
              ),
              DefoultContainerUserProvider(
                userNum: '3',
                pointRate: '800',
                userName: 'Youssef Elfar',
                userImage: 'assets/images/elfar.svg',
              ),
              DefoultContainerUserProvider(
                userNum: '4',
                pointRate: '750',
                userName: 'Youssef Ameer',
                userImage: 'assets/images/ammer.svg',
              ),
              DefoultContainerUserProvider(
                userNum: '5',
                pointRate: '700',
                userName: 'Maram Mohamed',
                userImage: 'assets/images/maram.svg',
              ),
              DefoultContainerUserProvider(
                userNum: '6',
                pointRate: '500',
                userName: 'Salma Ibrahim',
                userImage: 'assets/images/salma.svg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
