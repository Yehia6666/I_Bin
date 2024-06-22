import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_bin1/core/services/services.dart';
import 'package:i_bin1/pages/onbording/loadingPage.dart';

class MyMiddleWare extends GetMiddleware {
  @override
  int? get priority => 1;

  MyServices myServices = Get.find() ; 

  @override
  RouteSettings? redirect(String? route) {
     if(myServices.sharedPreferences.getString("onboarding") == "1"){
      return RouteSettings(name: LoadingPage.id) ;
     }
  }
}
