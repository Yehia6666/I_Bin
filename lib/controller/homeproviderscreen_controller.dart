
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:i_bin1/pages/provider_page/home_provider.dart';
import 'package:i_bin1/pages/provider_page/request/RequestDonations.dart';
import 'package:i_bin1/pages/provider_page/user_screen_provider/user_screen_provider.dart';
import 'package:i_bin1/pages/user/profile_user_page/ProfilePage.dart';

abstract class HomeProviderScreenController extends GetxController {
  changePage(int currentpage);
}

class HomeProviderScreenControllerImp extends HomeProviderScreenController {
  int currentpage = 0;

  List<Widget> listPage = [
    const HomeProvider(),
    const RequestDonations() ,
    const UserScreenProvider() ,
    const ProfilePage() ,
  ];

  @override
  changePage(int i) {
    currentpage = i;
    update();
  }
}
