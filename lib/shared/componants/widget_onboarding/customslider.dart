import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_bin1/controller/onboarding_controller.dart';
import 'package:i_bin1/data/datasource/static.dart';
import 'package:i_bin1/shared/componants/constant/color.dart';
import 'package:i_bin1/shared/componants/widget_onboarding/dotecontroller.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val){
        controller.onPageChange(val) ;
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, i) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: Column(
          children: [
            const Spacer(
              flex: 7,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Image.asset(onBoardingList[i].image!,
                width: double.infinity,
                height: 250,
              ),
            ),
            const Spacer(
              flex: 2,
            ),
            const CustomDotControllerOnBoarding(),
            const Spacer(
              flex: 3,
            ),
            Text(
              onBoardingList[i].title!,
              textAlign: TextAlign.center,
              style:Theme.of(context).textTheme.headline4,
            ),
            const Spacer(
              flex: 2,
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                onBoardingList[i].body!,
                maxLines: 3,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: AppColor.kBodySecColorblack,
                  fontSize: 12,
                  fontFamily: 'Readex',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
