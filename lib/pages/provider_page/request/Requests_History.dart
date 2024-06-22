import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_bin1/pages/provider_page/request/container_request_history.dart';
import 'package:i_bin1/shared/componants/constant/color.dart';
import 'package:i_bin1/shared/componants/defoualt_custom_button.dart';

class RequestsHistory extends StatefulWidget {
  const RequestsHistory({Key? key}) : super(key: key);
  static const String id = 'RequestsHistory';

  @override
  State<RequestsHistory> createState() => _RequestsHistoryState();
}

class _RequestsHistoryState extends State<RequestsHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Requests History',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline1,
        ),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon:const Icon(Icons.arrow_back_ios_new_rounded,color: Colors.green,),
        ),
        centerTitle: true,
        elevation: 1.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal:14.0.w, vertical: 24.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: DefualtCustomButton(
                        function: () {},
                        text: 'Pick-Up',
                        textSize: 14.sp,
                      ),
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Expanded(
                      child: Container(
                        height: 48.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.0.sp),
                          border: Border.all(width: 1.5.w, color: Colors.grey.shade400),
                        ),
                        child: DefualtCustomButton(
                          function: () {},
                          text: 'Donations',
                          textSize: 16.sp,
                          textColor: AppColor.kTitleColor,
                          background: const LinearGradient(
                            colors: [Colors.white, Colors.white],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 14.0.w, right: 14.0.w,bottom: 24.0.h),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search with ID or request number',
                          hintStyle: TextStyle(
                            fontSize: 12.sp,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.0.sp),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 12.0.h, horizontal: 16.0.w),
                          prefixIcon: Icon(Icons.search, size: 32.sp),

                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Column(
                children: [
                  BuildHistory(
                    requestNumber: '43',
                    clientID: '9867543',
                    location: 'Zefta,Al-Gharbiah',
                    requestTime: '2024/4/5 (12:00 pm)',
                    wastType: 'Organic, In-Organic',
                    estimatedWeight: '3.5 Kg',
                  ),
                  // const SizedBox(height: 10),
                  BuildHistory(
                    requestNumber: '42',
                    clientID: '9867544',
                    location: 'Zagazig,Al-Sharqia',
                    requestTime: '2024/4/2 (2:00 pm)',
                    wastType: 'Organic, In-Organic',
                    estimatedWeight: '3.5 Kg',
                  ),
                ],
              ),
              // const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

