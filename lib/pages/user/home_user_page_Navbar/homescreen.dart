import 'package:flutter/material.dart';


import 'package:get/get.dart';


import 'package:i_bin1/controller/homeuserscreen_controller.dart';


import 'package:i_bin1/shared/custom_buttomAppBar/custombuttonappbar.dart';


class HomeUserScreen extends StatelessWidget {

  static String id = 'HomeScreen';


  const HomeUserScreen({super.key});

  @override

  Widget build(BuildContext context) {

    Get.put(HomeUserScreenControllerImp());


    return GetBuilder<HomeUserScreenControllerImp>(

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

                      textbutton: "Bins",

                      icondata: 'assets/images/Bin_Icon.svg',

                      onPressed: () {

                        controller.changePage(1);

                      },

                      active: controller.currentpage == 1 ? true : false,

                    ),

                    CustomButtonAppBar(

                      textbutton: "Order",

                      icondata: 'assets/images/shipping-fast 1.svg',

                      onPressed: () {

                        controller.changePage(2);

                      },

                      active: controller.currentpage == 2 ? true : false,

                    ),

                    CustomButtonAppBar(

                      textbutton: "Donate",

                      icondata: 'assets/images/Donate_Icon.svg',

                      onPressed: () {

                        controller.changePage(3);

                      },

                      active: controller.currentpage == 3 ? true : false,

                    ),

                    CustomButtonAppBar(

                      textbutton: "Profile",

                      icondata: 'assets/images/Profile_Icon.svg',

                      onPressed: () {

                        controller.changePage(4);

                      },

                      active: controller.currentpage == 4 ? true : false,

                    ),

                  ],

                ),

              ),

              body: controller.listPage.elementAt(controller.currentpage),

            ));

  }

}

