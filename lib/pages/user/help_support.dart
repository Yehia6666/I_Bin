import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_bin1/shared/componants/constant.dart';
import 'package:i_bin1/shared/componants/constant/color.dart';

class HelpSupportPageUser extends StatefulWidget {

  static String id = 'HelpSupportPageUser' ;

  @override
  _HelpSupportPageUserState createState() => _HelpSupportPageUserState();
}

class _HelpSupportPageUserState extends State<HelpSupportPageUser> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1.0,
        leading: Padding(
          padding: EdgeInsets.only(left: 16.0.w),
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.green,
            size: 24.0.sp,
          ),
        ),
        title: Text(
          'Something wrong?',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColor.kTitleColor,
            fontSize: 18.sp,
            fontFamily: 'Readex',
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(14.0.sp),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.sp),
                        border: Border.all(
                          color: isChecked1 ? Colors.green : Colors.grey,
                          width: 1.0.w,
                        ),
                      ),
                      padding:EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'A technical issue',
                              style: TextStyle(
                                color: AppColor.kTitleColor,
                                fontSize: 10.sp,
                                fontFamily: 'Readex',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                isChecked1 = !isChecked1;
                              });
                            },
                            child: Icon(
                              isChecked1
                                  ? Icons.check_circle
                                  : Icons.check_circle_outline,
                              color: isChecked1 ? Colors.green : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 8.0.w),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.sp),
                        border: Border.all(
                          color: isChecked2 ? Colors.green : Colors.grey,
                          width: 1.0.w,
                        ),
                      ),
                      padding:EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Ask a question',
                              style: TextStyle(
                                color: AppColor.kTitleColor,
                                fontSize: 10.sp,
                                fontFamily: 'Readex',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                isChecked2 = !isChecked2;
                              });
                            },
                            child: Icon(
                              isChecked2
                                  ? Icons.check_circle
                                  : Icons.check_circle_outline,
                              color: isChecked2 ? Colors.green : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.0.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.sp),
                        border: Border.all(
                          color: isChecked3 ? Colors.green : Colors.grey,
                          width: 1.0.w,
                        ),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
                      child: Row(
                        children: [
                           Expanded(
                            child: Text(
                              'Suggest an idea',
                              style: TextStyle(
                                color: AppColor.kTitleColor,
                                fontSize: 10.sp,
                                fontFamily: 'Readex',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                isChecked3 = !isChecked3;
                              });
                            },
                            child: Icon(
                              isChecked3
                                  ? Icons.check_circle
                                  : Icons.check_circle_outline,
                              color: isChecked3 ? Colors.green : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 8.0.w),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.sp),
                        border: Border.all(
                          color: isChecked4 ? Colors.green : Colors.grey,
                          width: 1.0.w,
                        ),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
                      child: Row(
                        children: [
                           Expanded(
                            child: Text(
                              'Other',
                              style: TextStyle(
                                color: AppColor.kTitleColor,
                                fontSize: 10.sp,
                                fontFamily: 'Readex',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                isChecked4 = !isChecked4;
                              });
                            },
                            child: Icon(
                              isChecked4
                                  ? Icons.check_circle
                                  : Icons.check_circle_outline,
                              color: isChecked4 ? Colors.green : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
               Row(
                children: [
                   Text(
                    'Tell us more',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              Container(
                height: 200.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14.sp),
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0.w,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 14.w,),
                  child: TextField(
                    maxLines: null,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: 'Readex',
                        fontWeight: FontWeight.w500,
                      ),
                      hintText: 'Please include as much detail as you can,to\n ensure we can help you as best as possible.',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.h),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0.sp),
                          border: Border.all(width: 2.0.w , color:const Color(0xFF03B04E)),),
                        child:  InkWell(
                          onTap: (){
                          },
                          child: Container (
                            height: 45.h,
                            width: 156.w,
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Cancel',
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 12.sp,
                                      fontFamily: 'Readex',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14.sp),
                              gradient:const LinearGradient(
                                colors: [Colors.white , Colors.white ],
                              ),
                            ),
                          ),
                        ),

                      ),
                    ),

                   const Spacer(
                      flex: 1,
                    ),

                    InkWell(
                      onTap: (){

                      },
                      child: Container(
                        height: 50.h,
                        width: 156.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.sp),
                          gradient: kPrimaryColor,
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               Text(
                                'Send Request',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.sp,
                                  fontFamily: 'Readex',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
          
            ],
          ),
        ),
      ),
    );
  }
}
