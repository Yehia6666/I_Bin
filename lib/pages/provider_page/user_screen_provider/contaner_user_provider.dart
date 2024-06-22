import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_bin1/pages/provider_page/user_details_screen.dart';
import 'package:i_bin1/shared/componants/constant/color.dart';
import 'package:i_bin1/shared/componants/defoualt_image.dart';

// ignore: must_be_immutable
class DefoultContainerUserProvider extends StatelessWidget {
  DefoultContainerUserProvider({ 
    this.userNum,
    this.userImage,
    this.userName,
    this.pointRate,
    this.call,
    this.location,
    this.function,
    super.key,
  });

  String? userNum ;
  String? userImage ;
  String? userName ;
  String? pointRate ;
  Function()? call ;
  Function()? location ;
  Function()? function ;



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: InkWell(
        onTap: (){
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) =>const UserDetailsScreen()),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14.sp),
            border: Border.all(
              color: Colors.grey.shade400,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical:12.h ),
            child: Row(
              children: [
                 Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Text(
                    userNum!,
                    textAlign: TextAlign.center,
                    style:Theme.of(context).textTheme.headline1,
                  ),
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
                          backgroundImage: AssetImage(userImage!),
                        ),
                      )
                    ],
                  ),
                ),

                 Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 115.w,
                      child: Text(
                        userName!,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style:Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    Text(
                      '${pointRate!}Point',
                      style:Theme.of(context).textTheme.headline2,
                    ),
                  ],
                ),

                const Spacer(
                  flex: 1,
                ),
                InkWell(
                  onTap: call,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 40.w,
                          height: 40.h,
                          decoration:ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.sp),
                            ),
                            shadows: [
                              BoxShadow(
                                color: AppColor.kShadowColor,
                                blurRadius: 12.0.sp,
                                offset:const Offset(0, 0.90),
                              ),
                            ],
                          ),
                        ),
                        DefoualtImage('assets/images/Phone_Icon.svg',
                          height: 20.h,
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: location,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 40.w,
                        height: 40.h,
                        decoration:ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.sp),
                          ),
                          shadows: [
                            BoxShadow(
                              color: AppColor.kShadowColor,
                              blurRadius: 12.0.sp,
                              offset:const Offset(0, 0.90),
                            ),
                          ],
                        ),
                      ),
                      DefoualtImage('assets/images/Get_Location_Icon.svg',
                        height: 20.h,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


