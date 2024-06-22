import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_bin1/controller/onboarding_controller.dart';
import 'package:i_bin1/pages/onbording/loadingPage.dart';
import 'package:i_bin1/shared/componants/constant/color.dart';
import 'package:i_bin1/shared/componants/defoualt_custom_button.dart';
import 'package:i_bin1/shared/componants/widget_onboarding/customslider.dart';


class OnBoarding extends GetView<OnBoardingControllerImp> {
  const OnBoarding({super.key});
  static String id = 'Onboarding';
  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp()) ;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 14),
            child: InkWell(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>const LoadingPage()));
              },
              child:const Text('Skip',
                style: TextStyle(
                  color: AppColor.kAppBarColorGreen,
                  fontSize: 16,
                  fontFamily: 'Readex',
                  fontWeight: FontWeight.w600,
                ),),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          children: [
           const Expanded(
              flex: 3,
              child: CustomSliderOnBoarding(),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  const Spacer(
                    flex: 7,
                  ),
                  DefualtCustomButton(
                    function: (){
                        controller.next();
                    },
                    text: 'Next',
                    textSize: 18,
                  ),
                  const Spacer(
                    flex: 5,
                  )
                ],
              ),),
          ],
        ),
      ),
    );
  }
}
