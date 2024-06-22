import 'package:flutter/material.dart';
import 'package:i_bin1/shared/componants/constant/color.dart';

void showLoadingDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return const Center(
        child: CircularProgressIndicator(
          color: AppColor.kAppBarColorGreen,
        ),
      );
    },
  );
}