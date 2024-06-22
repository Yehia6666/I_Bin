import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class DefoualtImage extends StatelessWidget {
   DefoualtImage(this.urlForImage , {super.key, this.width , this.height , this.color});

  @required String? urlForImage ;
  double? width = 26 ;
  double? height = 26 ;
  Color? color ;

  @override
  Widget build(BuildContext context) {

    return  SvgPicture.asset(urlForImage! ,
      color: color,
      width: width,
      height: height,
    );
  }
}
