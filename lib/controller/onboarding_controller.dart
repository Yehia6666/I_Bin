import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:i_bin1/core/services/services.dart';
import 'package:i_bin1/data/datasource/static.dart';
import 'package:i_bin1/pages/onbording/loadingPage.dart';

abstract class OnBoardingController extends GetxController{

  next() ;
  onPageChange(int index) ;

}

class OnBoardingControllerImp extends OnBoardingController{

  late PageController pageController ;
  int currentPage = 0 ;
  MyServices myServices = Get.find() ;

  @override
  next() {
    currentPage++ ;
    if(currentPage > onBoardingList.length-1){
      myServices.sharedPreferences.setString("onboarding" , "1") ;
     Get.offAllNamed(LoadingPage.id);
    }else{
      pageController.animateToPage(currentPage, duration:const Duration(milliseconds: 800), curve: Curves.easeInOut);
    }

  }

  @override
  onPageChange(int index) {
    currentPage = index ;
    update();
  }

  @override
  void onInit() {
    pageController = PageController() ;
    super.onInit();
  }

}