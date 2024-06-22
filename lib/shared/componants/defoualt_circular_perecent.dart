import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

// ignore: must_be_immutable
class DefoualtCircularPerecent extends StatelessWidget {
   DefoualtCircularPerecent({
     this.width = 8, this.radius = 55,
     this.indicatorPerecent1, this.indicatorColor = Colors.yellow,
   });

   @required double? indicatorPerecent1= 0.50 ;
    double radius ;
    double width ;
    Color? indicatorColor;

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      animation: true,
      animationDuration: 1000,
      radius: radius,
      lineWidth: width,
      percent: indicatorPerecent1!,
      progressColor: indicatorColor,
      circularStrokeCap: CircularStrokeCap.round,
      center: Text('${(indicatorPerecent1!*100).toInt()}%',
        style: TextStyle(
          fontSize: 20,
          fontFamily: 'Readex',
          fontWeight: FontWeight.w500,
          color: indicatorColor,
        ),
      ),
    );
  }
}
