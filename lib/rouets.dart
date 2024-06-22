import 'package:flutter/material.dart';
import 'package:i_bin1/pages/onbording/loadingPage.dart';
import 'package:i_bin1/pages/onbording/splash_screen.dart';
import 'package:i_bin1/pages/provider_page/exchange_point/exchange_point.dart';
import 'package:i_bin1/pages/provider_page/help_support/help_support_page_provider.dart';
import 'package:i_bin1/pages/provider_page/home_provider.dart';
import 'package:i_bin1/pages/provider_page/login_as_provider.dart';
import 'package:i_bin1/pages/provider_page/profile_provider.dart';
import 'package:i_bin1/pages/provider_page/request/RequestDonations.dart';
import 'package:i_bin1/pages/provider_page/request/RequestPickUp.dart';
import 'package:i_bin1/pages/provider_page/request/Requests_History.dart';
import 'package:i_bin1/pages/provider_page/requests_statistics.dart';
import 'package:i_bin1/pages/provider_page/user_details_screen.dart';
import 'package:i_bin1/pages/provider_page/user_screen_provider/user_screen_provider.dart';
import 'package:i_bin1/pages/user/achivement_page/achievement_page.dart';
import 'package:i_bin1/pages/user/articale_details_page/article_details.dart';
import 'package:i_bin1/pages/user/articale_page/article_page.dart';
import 'package:i_bin1/pages/user/bin_page/bins_page.dart';
import 'package:i_bin1/pages/user/congrattulation_page/congratulation.dart';
import 'package:i_bin1/pages/user/creat_account_for_user.dart';
import 'package:i_bin1/pages/user/donate_page/donate_Page.dart';
import 'package:i_bin1/pages/user/edit_profile_page.dart';
import 'package:i_bin1/pages/user/exchange_point_user/exchange_point_page_user.dart';
import 'package:i_bin1/pages/user/help_support.dart';
import 'package:i_bin1/pages/user/home_user_page/home_user.dart';
import 'package:i_bin1/pages/user/notification_page/notifications_page.dart';
import 'package:i_bin1/pages/user/order_page/order_page.dart';
import 'package:i_bin1/pages/user/point_borad_user_page/point_borad_user_screen.dart';
import 'package:i_bin1/pages/user/profile_user_page/ProfilePage.dart';
import 'package:i_bin1/pages/user/request_submitted_page.dart';
import 'package:i_bin1/shared/componants/constant/routes.dart';

Map <String, Widget Function(BuildContext)> rouets = {

  AppRoutes.LoadingPage            : (context) =>const LoadingPage(),
  AppRoutes.SplashScreen           : (context) =>const SplashScreen(),
  AppRoutes.Login_As_Provider      : (context) =>const Login_As_Provider(),
  AppRoutes.CongratulationPage     : (context) => CongratulationPage(),
  AppRoutes.CreatAcountForUser     : (context) => CreateAccountForUser(),
  AppRoutes.HelpSupportPageUser    : (context) => HelpSupportPageUser(),
  AppRoutes.EditProfilePage        : (context) => EditProfilePage(),
  AppRoutes.HomeUserPage           : (context) => const HomeUserPage(),
  AppRoutes.HomeProvider           : (context) => const HomeProvider(),
  AppRoutes.OrderPage              :(context) => const OrderPage(),
  AppRoutes.DonatePage             :(context)=>const DonatePage(),
  AppRoutes.ArticlesPage           : (context) => ArticlesPage(),
  AppRoutes.PointBoradUserScreen   : (context) => const PointBoradUserScreen(),
  AppRoutes.AchievementPage        : (context) => const AchievementPage(),
  AppRoutes.BinPage                : (context) =>const BinPage(),
  AppRoutes.ProfilePage            : (context) => const ProfilePage(),
  AppRoutes.RequestSubmittedPage   :(context) =>const RequestSubmittedPage(),
  AppRoutes.NotificationsPage      : (context) =>const NotificationsPage(),
  AppRoutes.ExchangePointUser      : (context) => const ExchangePointUser(),
  AppRoutes.ArticleDetails         : (context) =>const ArticleDetails(),
  AppRoutes.UserScreenProvider     :(context) => const UserScreenProvider(),
  AppRoutes.UserDetailsScreen      :(context) => const  UserDetailsScreen(),
  AppRoutes.ProfileProviderScreen  :(context) =>const ProfileProviderScreen(),
  AppRoutes.RequestDonations       :(context) => const RequestDonations(),
  AppRoutes.RequestPickUp          :(context) => const RequestPickUp(),
  AppRoutes.RequestsHistory        :(context) => const RequestsHistory(),
  AppRoutes.ExchangePointPage      :(context) => const ExchangePointPage(),
  AppRoutes.RequestsStatisticsPage :(context) => const RequestsStatisticsPage(),
  AppRoutes.HelpSupportPageProvider:(context) => const HelpSupportPageProvider(),

};