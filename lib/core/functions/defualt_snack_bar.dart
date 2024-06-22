import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_bin1/shared/componants/constant.dart';

// Your custom SnackBar function
void showSnackBarSuccess(BuildContext context, String titleMessage) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Container(
        width: 500.w,
        height: 80.h, // Adjust height if needed
        padding: EdgeInsets.symmetric(horizontal: 8.0.w),
       // margin:const EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
          gradient: kPrimaryColor,
          borderRadius: BorderRadius.circular(16.0.sp),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.error_outline,
                size: 34.0.sp,
                color: Colors.white,
              ),
              SizedBox(
                width: 8.0.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${titleMessage}...',
                    style:  TextStyle(
                      color: Colors.white,
                      fontSize: 16.0.sp,
                      fontFamily: 'Readex',
                    ),
                  ),
                  SizedBox(
                    height: 4.0.h,
                  ),
                  SizedBox(
                    width: 220.0.w, // Adjust width if needed
                    child: Text(
                      'I-BIN SnackBar: $titleMessage is Done',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style:  TextStyle(
                        color: Colors.white,
                        fontSize: 11.0.sp,
                        fontFamily: 'Readex',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
  );
}

// Your custom SnackBar function
void showSnackBarFailur(BuildContext context, String titleMessage) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Container(
        width: 500.w,
        height: 80.h, // Adjust height if needed
        padding: EdgeInsets.symmetric(horizontal: 8.0.w),
       // margin:const EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 166, 50, 42),
          borderRadius: BorderRadius.circular(16.0.sp),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.error_outline,
                size: 34.0.sp,
                color: Colors.white,
              ),
              SizedBox(
                width: 8.0.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${titleMessage}...',
                    style:  TextStyle(
                      color: Colors.white,
                      fontSize: 16.0.sp,
                      fontFamily: 'Readex',
                    ),
                  ),
                  SizedBox(
                    height: 4.0.h,
                  ),
                  SizedBox(
                    width: 220.0.w, // Adjust width if needed
                    child: Text(
                      'I-BIN SnackBar: $titleMessage is failed',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style:  TextStyle(
                        color: Colors.white,
                       fontSize: 11.0.sp,
                        fontFamily: 'Readex',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
  );
}