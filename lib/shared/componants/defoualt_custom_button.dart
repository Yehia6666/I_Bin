import 'package:flutter/material.dart';
import 'package:i_bin1/shared/componants/constant.dart';

class DefualtCustomButton extends StatelessWidget {
   DefualtCustomButton({
    this.height = 50 ,
    this.width = double.infinity ,
    this.background = kPrimaryColor,
    this.borderRound = 14 ,
     this.function ,
     this.text,
     this.textColor = Colors.white ,
     this.textSize = 14,
});

  double? height;
  double? width;
  double? borderRound;
  Color? textColor ;
  LinearGradient? background ;
  @required Function()? function ;
  double? textSize ;
  @required String? text ;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRound!),
          gradient: background,
          ),

       child: Center(
         child: Text(text!,
           style: TextStyle(
             color: textColor,
             fontFamily: 'Readex',
             fontSize: textSize,
             fontWeight: FontWeight.w600,
           ),
         ),
       ),
      ),
    );
  }
}







// import 'package:flutter/material.dart';
// import 'package:i_bin1/shared/componants/constant.dart';
// import 'package:i_bin1/shared/componants/defoualt_image.dart';
//
//
// Widget defualtButton({
//  double width = double.infinity,
//  double height = 50.0,
//  LinearGradient background = kPrimaryColor,
//  Color textColor = Colors.white,
//  double borderRound = 16 ,
//  double textSize = 18 ,
//  Function()? function,
//  String? text,
//  Function? onTap,
//  String? imageIcon,
//  String? svgAsset,
//  Color? iconColor, // إضافة وسيمة للون الأيقونة
// }) =>
//     GestureDetector(
//      onTap: function,
//      child: Container(
//       child: Center(
//        child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//         DefoualtImage(imageIcon,
//         color: iconColor,
//         ),
//          SizedBox(
//           width: 4.0,
//          ),
//          Text(
//           text!,
//           style: TextStyle(
//            color: textColor,
//            fontSize: textSize,
//            fontFamily: 'Readex',
//            fontWeight: FontWeight.w600,
//           ),
//          ),
//         ],
//        ),
//       ),
//       height: height,
//       width: width,
//       decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(borderRound),
// gradient: background,
// ),
//      ),
//     );


