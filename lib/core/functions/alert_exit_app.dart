
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:i_bin1/shared/componants/constant/color.dart';
import 'package:i_bin1/shared/componants/defoualt_custom_button.dart';

  Future<bool> alertExitApp(){

  Get.defaultDialog(
    title: 'Exit ?' ,
    middleText: 'Are You Need To Exit From App... ?' ,
    titleStyle: TextStyle(
      color: AppColor.kTitleColor,
      fontSize: 18.sp,
      fontFamily: 'Readex',
      fontWeight: FontWeight.w600,
    ),
    backgroundColor: Colors.white,
    middleTextStyle: TextStyle(
      color: AppColor.kTitleColor,
      fontSize: 16.sp,
      fontFamily: 'Readex',
      fontWeight: FontWeight.w500,
    ),
    contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h,),
    cancelTextColor:  Colors.white,
    confirmTextColor:  Colors.white,

    actions: [
       DefualtCustomButton(
        function: (){
         exit(0);
          },
         text: 'Confirm' ,
        ),
       DefualtCustomButton(
        function: (){
          Get.back();
          },
         text: 'Cancel' ,
         background:const LinearGradient(
           colors: [ Color(0xFFEB3929),  Color(0xFFEB3929),],),
        ),

    ],
  );

  return Future.value(true) ;
}