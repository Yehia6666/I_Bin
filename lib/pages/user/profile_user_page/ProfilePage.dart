// ignore_for_file: library_private_types_in_public_api

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:i_bin1/bloc/auth_cubit/cubits/cubit/logout_cubit.dart';
import 'package:i_bin1/core/functions/defualt_snack_bar.dart';
import 'package:i_bin1/pages/onbording/loadingPage.dart';
import 'package:i_bin1/pages/user/achivement_page/achievement_page.dart';
import 'package:i_bin1/pages/user/edit_profile_page.dart';
import 'package:i_bin1/pages/user/exchange_point_user/exchange_point_page_user.dart';
import 'package:i_bin1/pages/user/help_support.dart';
import 'package:i_bin1/pages/user/home_user_page/home_user.dart';
import 'package:i_bin1/shared/componants/constant/color.dart';
import 'package:i_bin1/shared/componants/defoualt_custom_button.dart';

class ProfileUserPageProvider extends StatelessWidget {
  const ProfileUserPageProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LogoutCubit(),
      child: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  static String id = 'ProfilePage';
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool switchValue = false;
  bool isSelectedDonations = false;
  bool isSelectedPick = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LogoutCubit, LogoutState>(
      listener: (context, state) {
        if (state is LogoutLoading) {
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
        } else if (state is LogoutSuccess) {
          log('state is succes');
          Navigator.pop(context);
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const LoadingPage(),
            ),
          );
          showSnackBarSuccess(context, 'Loged out');
        } else if (state is LogoutFailuer) {
          Navigator.pop(context);
          log('there was an error in log out page : ${state.errorMessage}');
          showSnackBarFailur(context, 'Loged Out');
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text(
              'Profile',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColor.kTitleColor,
                fontSize: 20.sp,
                fontFamily: 'Readex',
                fontWeight: FontWeight.w600,
              ),
            ),
            centerTitle: true,
            actions: [
              IconButton(
                icon: Icon(
                  Icons.logout,
                  size: 30.sp,
                  color: Colors.red,
                ),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text(
                            'Leave Profile ?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColor.kTitleColor,
                              fontSize: 18.sp,
                              fontFamily: 'Readex',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          content: Text(
                            'Are You Need Leave Your Profile ..,? ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColor.kTitleColor,
                              fontSize: 16.sp,
                              fontFamily: 'Readex',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          backgroundColor: Colors.white,
                          alignment: Alignment.center,
                          actions: [
                            DefualtCustomButton(
                              function: () {
                                Navigator.pop(context);
                              },
                              text: 'Cancel',
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            DefualtCustomButton(
                              function: () async {
                                // TODO

                                await BlocProvider.of<LogoutCubit>(context)
                                    .logoutAccount();
                              },
                              text: 'Confirm',
                              background: const LinearGradient(
                                colors: [
                                  Color(0xFFEB3929),
                                  Color(0xFFEB3929),
                                ],
                              ),
                            ),
                          ],
                        );
                      });
                },
              ),
            ],
            leading: IconButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeUserPage()),
                  );
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.green,
                )),
            backgroundColor: Colors.white,
            elevation: 1,
          ),
          body: Positioned.fill(
            child: Column(
              children: [
                const Spacer(
                  flex: 8,
                ),
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    CircleAvatar(
                      radius: 86.0.sp,
                      backgroundColor: Colors.green,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 4.w, bottom: 4.h),
                      child: CircleAvatar(
                        radius: 82.0.sp,
                        backgroundColor: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 8.w, bottom: 8.h),
                      child: CircleAvatar(
                        radius: 78.0.sp,
                        backgroundImage: const AssetImage(
                          'assets/images/yehia.png',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: 7.h,
                        right: 7.w,
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 16.sp,
                        child: const Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.green,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: 10.h,
                        right: 9.w,
                      ),
                      child: CircleAvatar(
                          backgroundColor: Colors.green,
                          radius: 6.sp,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 10.sp,
                          )),
                    )
                  ],
                ),
                const Spacer(
                  flex: 1,
                ),
                Text(
                  'Yehia Reda',
                  style: TextStyle(
                    color: AppColor.kTitleColor,
                    fontSize: 18.sp,
                    fontFamily: 'Readex',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'yehia01128445409@gmail.com',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColor.kGrayColor,
                    fontSize: 12.sp,
                    fontFamily: 'Readex',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Spacer(
                  flex: 10,
                ),
                buildProfileOption(
                  'Edit profile',
                  'assets/images/Edit_Profile_Icon.svg',
                  function: () {
                    Navigator.pushNamed(context, EditProfilePage.id);
                  },
                ),
                buildProfileOption(
                    'Exchange points', 'assets/images/Point_Icon.svg',
                    function: () {
                  Navigator.pushNamed(context, ExchangePointUser.id);
                }),
                buildProfileOption(
                    'Achievements', 'assets/images/Achievement_Icon.svg',
                    function: () {
                  Navigator.pushNamed(context, AchievementPage.id);
                }),
                buildProfileOption(
                  'App notifications',
                  'assets/images/Notification_Icon.svg',
                  defaultIcon: Icons.toggle_off_sharp,
                ),
                buildProfileOption(
                  'Rate our app',
                  'assets/images/Rate_Icon.svg',
                ),
                buildProfileOption(
                    'Help & Support', 'assets/images/Support_Icon.svg',
                    function: () {
                  Navigator.pushNamed(context, HelpSupportPageUser.id);
                }),
                const Spacer(
                  flex: 13,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget buildProfileOption(String text, String iconPath,
      {double iconSize = 20,
      IconData defaultIcon = Icons.arrow_forward_ios,
      Function()? function}) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
      ),
      child: Column(
        children: [
          InkWell(
            onTap: function,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 8.w),
                      child: SvgPicture.asset(
                        iconPath,
                        width: iconSize,
                        height: iconSize,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      text,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontFamily: 'Readex',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                if (text == 'App notifications')
                  Transform.scale(
                    scale: 0.8.sp,
                    child: Switch(
                      value: switchValue,
                      onChanged: (value) {
                        setState(() {
                          switchValue = value;
                        });
                      },
                      activeColor: Colors.green,
                    ),
                  ),
                if (text != 'App notifications')
                  Icon(
                    defaultIcon,
                    color: Colors.green,
                    size: iconSize,
                  ),
              ],
            ),
          ),
          if (text != 'Help & Support')
            Divider(
              color: Colors.grey,
              thickness: 1.sp,
              indent: 16.sp,
              endIndent: 16.sp,
            ),
        ],
      ),
    );
  }
}
