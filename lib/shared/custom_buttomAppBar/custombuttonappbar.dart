// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';


import 'package:i_bin1/shared/componants/constant/color.dart';


import 'package:i_bin1/shared/componants/defoualt_image.dart';



class CustomButtonAppBar extends StatelessWidget {

  Function()? onPressed;


  final String textbutton;


  final String icondata;


  final bool? active;


  CustomButtonAppBar({

    super.key,

    required this.textbutton,

    required this.icondata,

    required this.onPressed,

    required this.active,

  });


  @override

  Widget build(BuildContext context) {

    return GestureDetector(

      onTap: onPressed,

      child: Column(mainAxisSize: MainAxisSize.min, children: [

        DefoualtImage(

          icondata,

          width: 22.0,

          height: 22.0,

          color:
              active == true ? AppColor.kAppBarColorGreen : AppColor.kGrayColor,

        ),

        Text(

          textbutton,

          style: TextStyle(

            fontSize: 12,

            fontFamily: 'Readex',
            fontWeight: FontWeight.w500,

            color: active == true

                ? AppColor.kAppBarColorGreen

                : AppColor.kGrayColor,

          ),

        ),

      ]),

    );

  }

}

