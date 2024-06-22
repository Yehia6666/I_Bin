// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:i_bin1/controller/homeproviderscreen_controller.dart';

import 'package:i_bin1/shared/custom_buttomAppBar/custombuttonappbar.dart';

class HomeProviderScreen extends StatelessWidget {
  static String id = 'HomeProviderScreen';

  const HomeProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeProviderScreenControllerImp());

    return GetBuilder<HomeProviderScreenControllerImp>(
        builder: (controller) => Scaffold(
              bottomNavigationBar: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButtonAppBar(
                      textbutton: "Home",
                      icondata: 'assets/images/house_Icon.svg',
                      onPressed: () {
                        controller.changePage(0);
                      },
                      active: controller.currentpage == 0 ? true : false,
                    ),
                    CustomButtonAppBar(
                      textbutton: "Request",
                      icondata: 'assets/images/Shipping_Icon.svg',
                      onPressed: () {
                        controller.changePage(1);
                      },
                      active: controller.currentpage == 1 ? true : false,
                    ),
                    CustomButtonAppBar(
                      textbutton: "Users",
                      icondata: 'assets/images/Users_Icon.svg',
                      onPressed: () {
                        controller.changePage(2);
                      },
                      active: controller.currentpage == 2 ? true : false,
                    ),
                    CustomButtonAppBar(
                      textbutton: "Profile",
                      icondata: 'assets/images/Profile_Icon.svg',
                      onPressed: () {
                        controller.changePage(3);
                      },
                      active: controller.currentpage == 3 ? true : false,
                    ),
                  ],
                ),
              ),
              body: controller.listPage.elementAt(controller.currentpage),
            ));
  }
}
