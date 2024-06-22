import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_bin1/bloc/auth_cubit/cubits/cubit/get_user_cubit.dart';
import 'package:i_bin1/core/functions/defualt_snack_bar.dart';
import 'package:i_bin1/data/model/get_user_model_service/get_user_model.dart';
import 'package:i_bin1/pages/user/articale_page/article_page.dart';
import 'package:i_bin1/pages/user/notification_page/notifications_page.dart';
import 'package:i_bin1/pages/user/articale_page/artical_card.dart';
import 'package:i_bin1/shared/componants/constant/color.dart';
import 'package:i_bin1/shared/componants/defoualt_image.dart';
import 'package:i_bin1/pages/user/home_user_page/defoult_user_card.dart';

class HomeUserPageProvider extends StatelessWidget {
  const HomeUserPageProvider({super.key});
  static String id = 'HomeUserPageProvider';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetUserCubit(),
      child: const HomeUserPage(),
    );
  }
}

class HomeUserPage extends StatefulWidget {
  const HomeUserPage({super.key});

  static String id = 'HomeUserPage';

  @override
  State<HomeUserPage> createState() => _HomeUserPageState();
}

class _HomeUserPageState extends State<HomeUserPage> {
  bool isSelectedDonations = false;
  bool isSelectedPick = false;

  GetUserModel? getUserModel;

  @override
  void initState() {
    super.initState();
    // Initialize data when the widget is created
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<GetUserCubit>(context).getUser(
        getUserModel!,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetUserCubit, GetUserState>(listener: (context, state) {
      if (state is GetUserLoading) {
        log('state is loading ');
        showDialog(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext context) {
              return const Center(
                child: CircularProgressIndicator(
                  color: AppColor.kAppBarColorGreen,
                ),
              );
            });
      } else if (state is GetUserSuccess) {
        setState(() {
          getUserModel = GetUserModel(
            userModel: state.user,
          );
        });

        log('dataaaaaaaaaaaaaa is $getUserModel');
      } else if (state is GetUserFailure) {
        Navigator.pop(context);
        showSnackBarFailur(context, 'Get User Date');
      }
    }, builder: (context, state) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: getUserModel == null
                ? const Center(
                    child: Text('Data is null'),
                  )
              : Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            gradient: AppColor.kPrimaryColor,
                          ),
                          height: 220.h,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 12.h,
                                  left: 12.w,
                                ),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.location_on_outlined,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      '${getUserModel?.userModel?.address}',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.sp,
                                        fontFamily: 'Readex',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 14.w, vertical: 12.h),
                                child: Row(
                                  children: [
                                    Stack(
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: Colors.green,
                                          radius: 28.sp,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 2.h, left: 2.w),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 26.sp,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 4.h, left: 4.w),
                                          child: CircleAvatar(
                                            radius: 24.sp,
                                            backgroundImage: const AssetImage(
                                                'assets/images/yehia.png'),
                                          ),
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 8.w),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Save the planet together',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14.sp,
                                              fontFamily: 'Readex',
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                          Text(
                                            '${getUserModel?.userModel?.name}',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.sp,
                                              fontFamily: 'Readex',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Spacer(
                                      flex: 1,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, NotificationsPage.id);
                                      },
                                      child: DefoualtImage(
                                        'assets/images/Notification_Icon.svg',
                                        color: Colors.white,
                                        height: 24.h,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 120.h, bottom: 8.h, left: 14.w, right: 14.w),
                          child: Container(
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14.0.sp),
                              ),
                              shadows: [
                                BoxShadow(
                                  color: AppColor.kShadowColor,
                                  blurRadius: 12.0.sp,
                                  offset: const Offset(0, 0.90),
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 16.h, horizontal: 16.w),
                              child: Column(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      height: 66.h,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(14.sp),
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Colors.green,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 16.w),
                                        child: Row(
                                          children: [
                                            DefoualtImage(
                                              'assets/images/Point_Icon.svg',
                                              color: Colors.black,
                                            ),
                                            SizedBox(
                                              width: 16.w,
                                            ),
                                            Text(
                                              'Total points\n${getUserModel?.userModel?.totalOrdersPoints}',
                                              style: TextStyle(
                                                color: AppColor.kTitleColor,
                                                fontSize: 14.sp,
                                                fontFamily: 'Readex',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 16.h,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      height: 66.h,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(14.sp),
                                        color: Colors.white,
                                        border: Border.all(
                                          width: 1.w,
                                          color: Colors.green,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 16.w),
                                        child: Row(
                                          children: [
                                            DefoualtImage(
                                              'assets/images/Recycling_Icon.svg',
                                              color: Colors.black,
                                            ),
                                            SizedBox(
                                              width: 16.w,
                                            ),
                                            Text(
                                              'Total items separated\n${getUserModel?.userModel?.totalOrderItemsKg}',
                                              style: TextStyle(
                                                color: AppColor.kTitleColor,
                                                fontSize: 14.sp,
                                                fontFamily: 'Readex',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 16.w),
                          child:
                              DefoualtImage('assets/images/Discover_Icon.svg'),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Text(
                          'Discover',
                          style: TextStyle(
                            color: AppColor.kTitleColor,
                            fontSize: 18.sp,
                            fontFamily: 'Readex',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 14.w),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.h),
                          child: Row(
                            children: [
                              DefualtUserCard(
                                  'Collect money by separating garbage, Check your ranking now',
                                  'Points Board',
                                  'assets/images/Slider_Illustration_1.svg'),
                              SizedBox(
                                width: 16.w,
                              ),
                              DefualtUserCard(
                                  'Order a truck to dispose of your garbage in an easy and safe way without any fees',
                                  'Points Board',
                                  'assets/images/Slider_Illustration_2.svg'),
                              SizedBox(
                                width: 16.w,
                              ),
                              DefualtUserCard(
                                  'Be a volunteer with us,Help those people who need your donations',
                                  'Points Board',
                                  'assets/images/Slider_Illustration_3.svg'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 14.w, right: 14.w, bottom: 8.h),
                      child: Row(
                        children: [
                          DefoualtImage('assets/images/Article_Icon.svg'),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            'Articles',
                            style: TextStyle(
                              color: AppColor.kTitleColor,
                              fontSize: 18.sp,
                              fontFamily: 'Readex',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, ArticlesPage.id);
                            },
                            child: Text(
                              'View More',
                              style: TextStyle(
                                color: const Color(0xFF03B04E),
                                fontSize: 12.sp,
                                fontFamily: 'Readex',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    ArticalCard(
                      imageUrl: 'assets/images/Article_Illistration_1.svg',
                      descriptionText:
                          'This text is an example of a text that can be replaced in the same space',
                      titleText: 'Learn how to reuse your garbage',
                    ),
                  ],
                ),
        ),
      );
    });
  }
}
