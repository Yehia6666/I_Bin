import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_bin1/shared/componants/constant/color.dart';
import 'package:i_bin1/shared/componants/defoualt_image.dart';

class ContainerUserProvider extends StatelessWidget {
   ContainerUserProvider({
     this.userNum,
     this.imageProfile,
     this.iconRate,
     this.userNameProfile,
     this.pointRate,
     this.numColor,
     this.sizeOfnum = 18,
   });

  @required String? imageProfile ;
  String? iconRate ;
  Color? numColor = AppColor.kTitleColor ;
  double? sizeOfnum  ;
  @required String? userNameProfile ;
  @required String? userNum ;
  @required String? pointRate ;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Padding(
        padding: EdgeInsets.only(bottom: 16.h,),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14.sp),
            border: Border.all(
              color: Colors.grey,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
            child: Row(
              children: [
                Stack(
                  children: [
                    DefoualtImage(iconRate,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: Text(userNum!,
                        style: TextStyle(
                          color: numColor,
                          fontSize: sizeOfnum,
                          fontFamily: 'Readex',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),

                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w,),
                  child: Stack(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 22.sp,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 2.h, left: 2.w),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 20.sp,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 4.h,left: 4.w),
                        child: CircleAvatar(
                          radius: 18.sp,
                          backgroundImage: AssetImage(imageProfile!),
                        ),
                      )
                    ],
                  ),
                ),
                Text(
                  userNameProfile!,
                  style:Theme.of(context).textTheme.bodyText1,
                ),
               const Spacer(
                  flex: 1,
                ),
                Text(
                  pointRate!,
                  style:Theme.of(context).textTheme.headline2,
                )
                ,                ],
            ),
          ),
        ),
      ),
    );
  }
}
