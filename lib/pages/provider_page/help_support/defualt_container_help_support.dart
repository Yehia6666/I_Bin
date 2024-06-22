import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_bin1/shared/componants/constant/color.dart';


class DefaultContainerHelpSupport extends StatelessWidget {
  final String name;
  final String id;
  final String date;
  final String issue;

  const DefaultContainerHelpSupport({
    Key? key,
    required this.name,
    required this.id,
    required this.date,
    required this.issue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 32.h, horizontal: 16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14.sp),
        boxShadow: [
          BoxShadow(
            color: AppColor.kShadowColor,
            blurRadius: 12.0.sp,
            offset:const Offset(0, 0.90),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.account_circle,
                size: 50.sp,
                color: Colors.grey,
              ),
              SizedBox(width: 8.w,),
              Container(
                width: 120.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text(
                      'ID: $id',
                      style: TextStyle(
                        color:  AppColor.kGrayColor,
                        fontSize: 12.sp,
                        fontFamily: 'Readex',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(flex: 1),
              Text(
                date,
                style: TextStyle(
                  color:  AppColor.kGrayColor,
                  fontSize: 14.sp,
                  fontFamily: 'Readex',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),

          SizedBox(height: 12.h),
          Text(
            issue,
            style: Theme.of(context).textTheme.headline3,
          ),
        ],
      ),
    );
  }
}