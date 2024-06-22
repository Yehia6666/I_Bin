
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:i_bin1/pages/user/bin_page/bins_page.dart';
import 'package:i_bin1/pages/user/donate_page/donate_Page.dart';
import 'package:i_bin1/pages/user/home_user_page/home_user.dart';
import 'package:i_bin1/pages/user/order_page/order_page.dart';
import 'package:i_bin1/pages/user/profile_user_page/ProfilePage.dart';

abstract class HomeUserScreenController extends GetxController {
  changePage(int currentpage);
}

class HomeUserScreenControllerImp extends HomeUserScreenController {
  int currentpage = 0;

  List<Widget> listPage = [
    const HomeUserPageProvider(),
    const BinPage() ,
    const OrderPage() ,
    const DonatePage() ,
    const ProfileUserPageProvider() ,
  ];

  List  titlebottomappbar = [
    "home" , 
    "settings" , 
    "profile" , 
    "favorite"
  ] ; 

  @override
  changePage(int i) {
    currentpage = i;
    update();
  }
}
