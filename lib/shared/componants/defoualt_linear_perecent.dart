import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class DefoualtLinearPerecent extends StatelessWidget {
  DefoualtLinearPerecent({
    this.height = 10, this.radius = 55,
    this.indicatorPerecent1= 0.50, this.indicatorColor = Colors.yellow,
  });

  @required double? indicatorPerecent1 ;
  double radius ;
  double height ;
  Color? indicatorColor;

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      animation: true,
      animationDuration: 1000,
      percent: indicatorPerecent1! ,
      lineHeight: height,
      progressColor: indicatorColor,
      barRadius:const Radius.circular(25),
    );
  }
}
