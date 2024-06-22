import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_bin1/controller/onboarding_controller.dart';
import 'package:i_bin1/data/datasource/static.dart';
import 'package:i_bin1/shared/componants/constant/color.dart';

class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>
      (builder: (controller) =>Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(onBoardingList.length,
              (index) => AnimatedContainer(
            margin: const EdgeInsets.only(left: 5),
            duration: const Duration(milliseconds: 800),
            width: controller.currentPage == index ? 20 : 6,
            height: 6,
            decoration: BoxDecoration(
              gradient: controller.currentPage == index ? AppColor.kPrimaryColor : const LinearGradient(colors: [Colors.black12 ,Colors.black12 ]),
              borderRadius:BorderRadius.circular(10.0),
            ),

          ),),
      ],
    ));
  }
}
