import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_bin1/shared/componants/constant/color.dart';

class DefaultHelp extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onPressed;

  const DefaultHelp ({
    Key? key,
    required this.text,
    required this.isSelected,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(14.sp),
      child: Container(
        height: 44.h,
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? Colors.green : Colors.grey,
          ),
          borderRadius: BorderRadius.circular(14.sp),
        ),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: isSelected ? Colors.green : AppColor.kTitleColor,
              fontSize: 12.sp,
              fontFamily: 'Readex ',
              fontWeight: FontWeight.w600,

            ),
          ),
        ),
      ),
    );
  }
}
