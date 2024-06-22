// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_bin1/pages/provider_page/request/RequestDonations.dart';
import 'package:i_bin1/pages/provider_page/request/container_pick_up.dart';
import 'package:i_bin1/shared/componants/defoualt_custom_button.dart';
import 'package:i_bin1/shared/componants/defoualt_image.dart';

class RequestPickUp extends StatefulWidget {
  const RequestPickUp({super.key});
  static const String id = 'RequestPickUp';

  @override
  State<RequestPickUp> createState() => _RequestPickUpState();
}

class _RequestPickUpState extends State<RequestPickUp> {
   // Default index for 'Requests' icon

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:  Text(
          'Requests',
          style: Theme.of(context).textTheme.bodyText2,
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.only(left: 16.w),
            child: Stack(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 24.sp,
                ),
                Padding(
                  padding:  EdgeInsets.only(top: 1.h, left: 2.w, right: 2.w),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 23.sp,
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: 8.h, left: 4.w, right: 4.w),
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
              onTap: () {
                // هنا يمكنك تحديد ما يحدث عند النقر على الإشعارات
              },
              child: DefoualtImage(
                'assets/images/Notification_Icon.svg',
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
          padding: EdgeInsets.symmetric(horizontal: 14.w,vertical: 24.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      height: 48.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0.sp),
                        // border: Border.all(width: 2.0, color: const Color(
                        //     0xFF03B04E)),
                      ),
                      child: DefualtCustomButton(
                        function: () {},
                        text: 'Pick-Up',
                        textSize: 14.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Expanded(
                    child: Container(
                      height: 50.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0.sp),
                        border: Border.all(width: 2.0.w, color: Colors.grey),
                      ),
                      child: DefualtCustomButton(
                        function: () {
                          Navigator.pushNamed(context, RequestDonations.id);
                        },
                        text: 'Donations',
                        textSize: 14.sp,
                        textColor: Colors.black,
                        background: const LinearGradient(
                          colors: [Colors.white, Colors.white],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24.h),

              Column(
                children: [
                  BuildPickUp(
                    requestNumber: '43',
                    clientName: 'Yehia Reda',
                    location: 'Zefta,Al-Gharbiah',
                    requestTime: '2024/4/5(12:00pm)',
                    wasteType: 'Organic,In-Organic',
                    estimatedWeight: '3.5 Kg',
                  ),
                  BuildPickUp(
                    requestNumber: '42',
                    clientName: 'Maram Mohamed',
                    location: 'Zagazig,Al-Sharqia',
                    requestTime: '2024/4/2(2:00pm)',
                    wasteType: 'Organic,In-Organic',
                    estimatedWeight: '3.5 Kg',
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

