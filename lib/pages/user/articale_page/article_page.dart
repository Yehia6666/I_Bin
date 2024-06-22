import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_bin1/pages/user/articale_details_page/article_details.dart';
import 'package:i_bin1/pages/user/home_user_page/home_user.dart';
import 'package:i_bin1/pages/user/articale_page/artical_card.dart';
import 'package:i_bin1/shared/componants/constant/color.dart';
import 'package:i_bin1/shared/componants/defoualt_image.dart';

class ArticlesPage extends StatelessWidget {
   ArticlesPage({super.key});
   static String id = 'ArticlesPage' ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Colors.white,
        title: Text(
          'Articles',
          style:  Theme.of(context).textTheme.headline1,
        ),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, HomeUserPage.id);
            },
            child: Padding(
              padding:  EdgeInsets.only(right: 16.w),
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
                      backgroundImage:const AssetImage('assets/images/yehia.png'),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
       leading: IconButton(onPressed: (){
         Navigator.pop(context);
       },
           icon:const Icon(Icons.arrow_back_ios_new_rounded,color: Colors.green,
           )),

      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 30.h),
            child: Container(
              width: double.infinity,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.0.sp),
                ),
                shadows: [
                  BoxShadow(
                    color: AppColor.kShadowColor,
                    blurRadius: 12.0.sp,
                    offset:const Offset(0, 0.90),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16.h),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        DefoualtImage('assets/images/Featured_Icon.svg'),
                        SizedBox(
                          width: 8.w,
                        ),
                        Text(
                          'Featured Articles',
                          style: TextStyle(
                            color: AppColor.kTitleColor,
                            fontSize: 16.sp,
                            fontFamily: 'Readex',
                            fontWeight: FontWeight.w500,
                          ),),
                      ],
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, ArticleDetails.id);
                      },
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 32.w),
                              child: Container(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(vertical: 16.h),
                                      child: DefoualtImage('assets/images/Featured_Article_Illistration_1.svg' ,
                                        width: 150.w,
                                        height: 168.h,
                                      ),
                                    ),
                                    Text(
                                      'Why Segregation is important?',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColor.kTitleColor,
                                        fontSize: 14.sp,
                                        fontFamily: 'Readex',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 32.w),
                              child: Container(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(vertical: 16.h),
                                      child: DefoualtImage('assets/images/Featured_Article_Illistration_2.svg' ,
                                        width: 150.w,
                                        height: 168.h,
                                      ),
                                    ),
                                    Text(
                                      'How your donation helps those in need?',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColor.kTitleColor,
                                        fontSize: 14.sp,
                                        fontFamily: 'Readex',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 32.w),
                              child: Container(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:  EdgeInsets.symmetric(vertical: 16.h),
                                      child: DefoualtImage('assets/images/Featured_Article_Illistration_3.svg' ,
                                        width: 150.w,
                                        height: 168.h,
                                      ),
                                    ), Text(
                                      'Garbage causes ocean pollution',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColor.kTitleColor,
                                        fontSize: 14.sp,
                                        fontFamily: 'Readex',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.w, bottom: 8.h),
            child: Row(
              children: [
                Text(
                  'Newest Articles',
                  style: TextStyle(
                    color: AppColor.kTitleColor,
                    fontSize: 14.sp,
                    fontFamily: 'Readex',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          ArticalCard(
            imageUrl: 'assets/images/Article_Illistration_1.svg' ,
            titleText: 'Learn how to reuse your garbage',
            descriptionText: 'This text is an example of a text that can be replaced in the same space' ,

          ),
          SizedBox(
            height: 20.h,
          ),
          ArticalCard(
            imageUrl: 'assets/images/Article_Illistration_2.svg' ,
            titleText: 'Learn how to reuse your garbage',
            descriptionText: 'This text is an example of a text that can be replaced in the same space' ,
          ),
          SizedBox(
            height: 30.h,
          ),
        ],
      ),
    );
  }
}
