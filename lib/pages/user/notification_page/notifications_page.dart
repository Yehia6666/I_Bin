import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_bin1/shared/componants/defoualt_image.dart';
import 'package:i_bin1/pages/user/notification_page/notification_page_container.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});
  static String id = 'NotificationsPage' ;

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  // int _currentIndex = 0 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Notifications',
          style: Theme.of(context).textTheme.bodyText2,
        ),
        centerTitle: true,
        leading:  InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Padding(
            padding: EdgeInsets.only(left: 16.w),
            child: Stack(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 24.sp,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 1.h, left: 2.w , right: 2.w),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 23.sp,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.h,left: 4.w, right: 4.w),
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
                color: Colors.white,
                height: 24.sp,
              ),
            ),
          ),
        ],
        elevation: 1.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(14.0.w),
        child: Column(
          children: [
           NotificationContainer(
             urlImage: 'assets/images/envelope_Icon.svg',
             titleText: 'Donation request has been accepted ',
             subTitleText: 'Be ready for helping those in need',
             timeOfnotification: '3 hour ago',
           ),
            NotificationContainer(
              urlImage: 'assets/images/lightbulb_Icon.svg',
              titleText: 'In-Organic bin is 60%',
              subTitleText: 'Don’t make your bin is completely full',
              timeOfnotification: 'Yesterday',
            ),
            NotificationContainer(
              urlImage: 'assets/images/Emergency_Icon.svg',
              titleText: 'Organic bin is full !',
              subTitleText: 'Send a request to our team to dispose\nof your garbage ',
              timeOfnotification: 'Yesterday',
            ),
            NotificationContainer(
              urlImage: 'assets/images/Avater.svg',
              titleText: 'Check our latest updates ',
              subTitleText: 'New update is released check now!',
              timeOfnotification: 'Monday',
            ),
          ],
        ),
      ),
    );
  }
}
