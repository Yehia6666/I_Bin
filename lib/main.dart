
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:i_bin1/Test.dart';
import 'package:i_bin1/core/services/services.dart';
import 'package:i_bin1/helper/local_shared_preferences.dart';
import 'package:i_bin1/pages/onbording/loadingPage.dart';
import 'package:i_bin1/pages/onbording/onbording.dart';
import 'package:i_bin1/pages/onbording/splash_screen.dart';
import 'package:i_bin1/pages/provider_page/exchange_point/exchange_point.dart';
import 'package:i_bin1/pages/provider_page/help_support/help_support_page_provider.dart';
import 'package:i_bin1/pages/provider_page/home_provider.dart';
import 'package:i_bin1/pages/provider_page/home_provider_screen/homeProviderscreen.dart';
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
import 'package:i_bin1/pages/user/home_user_page_Navbar/homescreen.dart';
import 'package:i_bin1/pages/user/login_as_user/login_as_user.dart';
import 'package:i_bin1/pages/user/notification_page/notifications_page.dart';
import 'package:i_bin1/pages/user/order_page/order_page.dart';
import 'package:i_bin1/pages/user/point_borad_user_page/point_borad_user_screen.dart';
import 'package:i_bin1/pages/user/profile_user_page/ProfilePage.dart';
import 'package:i_bin1/pages/user/request_submitted_page.dart';
import 'package:i_bin1/shared/componants/constant/color.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
//   await initialServices();
//   await CacheNetwork.cacheInitalization() ;
//  token  =  CacheNetwork.getCacheData(key: "token") ;
  runApp(I_Bin());
}

class I_Bin extends StatelessWidget {
  const I_Bin({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 750),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          routes: <String, WidgetBuilder>{
            Test.id: (context) => Test(),
            OnBoarding.id: (context) => const OnBoarding(),
            LoadingPage.id: (context) => const LoadingPage(),
            SplashScreen.id: (context) => const SplashScreen(),
            Login_As_Provider.id: (context) => const LoginAsProviderProvider(),
            LoginAsUser.id: (context) =>const LoginAsUserProvider(),
            CongratulationPage.id: (context) => CongratulationPage(),
            CreateAccountForUser.id: (context) =>const CreateAccountForUserProvider(),
            EditProfilePage.id: (context) => EditProfilePage(),
            HomeUserPage.id: (context) => const HomeUserPageProvider(),
            HomeProvider.id: (context) => const HomeProvider(),
            OrderPage.id: (context) => const OrderPage(),
            DonatePage.id: (context) => const DonatePage(),
            ArticlesPage.id: (context) => ArticlesPage(),
            PointBoradUserScreen.id: (context) =>
                const PointBoradUserScreen(),
            AchievementPage.id: (context) => const AchievementPage(),
            BinPage.id: (context) => const BinPage(),
            ProfilePage.id: (context) => const ProfilePage(),
            RequestSubmittedPage.id: (context) =>
                const RequestSubmittedPage(),
            NotificationsPage.id: (context) => const NotificationsPage(),
            HelpSupportPageUser.id: (context) => HelpSupportPageUser(),
            ExchangePointUser.id: (context) => const ExchangePointUser(),
            ArticleDetails.id: (context) => const ArticleDetails(),
            UserScreenProvider.id: (context) => const UserScreenProvider(),
            UserDetailsScreen.id: (context) => const UserDetailsScreen(),
            ProfileProviderScreen.id: (context) =>
                const ProfileProviderScreen(),
            RequestDonations.id: (context) => const RequestDonations(),
            RequestPickUp.id: (context) => const RequestPickUp(),
            RequestsHistory.id: (context) => const RequestsHistory(),
            ExchangePointPage.id: (context) => const ExchangePointPage(),
            RequestsStatisticsPage.id: (context) =>
                const RequestsStatisticsPage(),
            HelpSupportPageProvider.id: (context) =>
                const HelpSupportPageProvider(),
                HomeUserScreen.id : (context) =>const HomeUserScreen() , 
                HomeProviderScreen.id : (context) =>const HomeProviderScreen() , 
          },
          theme: ThemeData(
            textTheme: TextTheme(
              headline1: TextStyle(
                color: AppColor.kTitleColor,
                fontSize: 20.sp,
                fontFamily: 'Readex',
                fontWeight: FontWeight.w600,
              ),
              headline2: TextStyle(
                color: AppColor.kTitleColor,
                fontSize: 12.sp,
                fontFamily: 'Readex',
                fontWeight: FontWeight.w400,
              ),
              headline3: TextStyle(
                color: AppColor.kBodySecColorblack,
                fontSize: 14.sp,
                fontFamily: 'Readex',
                fontWeight: FontWeight.w400,
              ),
              headline4: TextStyle(
                color: AppColor.kTitleColor,
                fontSize: 16.sp,
                fontFamily: 'Readex',
                fontWeight: FontWeight.w600,
              ),
              headline5: TextStyle(
                color: AppColor.kTitleColor,
                fontSize: 18.sp,
                fontFamily: 'Readex',
                fontWeight: FontWeight.w500,
              ),
              headline6: TextStyle(
                color: AppColor.kTitleColor,
                fontSize: 14.sp,
                fontFamily: 'Readex',
                fontWeight: FontWeight.w500,
              ),
              bodyText1: TextStyle(
                color: AppColor.kTitleColor,
                fontSize: 12.sp,
                fontFamily: 'Readex',
                fontWeight: FontWeight.w600,
              ),
              bodyText2: TextStyle(
                color: AppColor.kAppBarColorBlack,
                fontSize: 18.sp,
                fontFamily: 'Readex',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          debugShowCheckedModeBanner: false,
          initialRoute: LoginAsUser.id,
        );
      },
    );
  }
}

// child: GetMaterialApp(
//   routes : <String , WidgetBuilder>{
//     OnBoarding .id: (context) => const OnBoarding(),
//     LoadingPage.id: (context) =>const LoadingPage(),
//     SplashScreen.id: (context) =>const SplashScreen(),
//     Login_As_Provider.id: (context) =>const Login_As_Provider(),
//     CongratulationPage.id: (context) => const CongratulationPage(),
//     CreatAcountForUser.id: (context) => CreatAcountForUser(),
//     EditProfilePage.id: (context) => EditProfilePage(),
//     HomeUserPage.id: (context) => const HomeUserPage(),
//     HomeProvider.id: (context) => const HomeProvider(),
//     OrderPage.id:(context) => const OrderPage(),
//     DonatePage.id:(context)=>const DonatePage(),
//     ArticlesPage.id: (context) => ArticlesPage(),
//     PointBoradUserScreen.id: (context) => const PointBoradUserScreen(),
//     AchievementPage.id: (context) => const AchievementPage(),
//     BinPage.id: (context) =>const BinPage(),
//     ProfilePage.id: (context) => const ProfilePage(),
//     RequestSubmittedPage.id:(context) =>const RequestSubmittedPage(),
//     NotificationsPage.id: (context) =>const NotificationsPage(),
//     HelpSupportPageUser.id: (context) =>  HelpSupportPageUser(),
//     ExchangePointUser.id: (context) => const ExchangePointUser(),
//     ArticleDetails.id: (context) =>const ArticleDetails(),
//     UserScreenProvider.id:(context) => const UserScreenProvider(),
//     UserDetailsScreen.id:(context) => const  UserDetailsScreen(),
//     ProfileProviderScreen.id:(context) =>const ProfileProviderScreen(),
//     RequestDonations.id:(context) => const RequestDonations(),
//     RequestPickUp.id:(context) => const RequestPickUp(),
//     RequestsHistory.id:(context) => const RequestsHistory(),
//     ExchangePointPage.id:(context) => const ExchangePointPage(),
//     RequestsStatisticsPage.id:(context) => const RequestsStatisticsPage(),
//     HelpSupportPageProvider.id:(context) => const HelpSupportPageProvider(),
//
//   },
//
//
//   theme: ThemeData(
//     textTheme: TextTheme(
//
//       headline1: TextStyle(
//         color: AppColor.kTitleColor,
//         fontSize: 20.sp,
//         fontFamily: 'Readex',
//         fontWeight: FontWeight.w600,
//       ),
//       headline2: TextStyle(
//         color: AppColor.kTitleColor,
//         fontSize: 12.sp,
//         fontFamily: 'Readex',
//         fontWeight: FontWeight.w400,
//       ),
//
//       headline3: TextStyle(
//         color: AppColor.kBodySecColorblack,
//         fontSize: 14.sp,
//         fontFamily: 'Readex',
//         fontWeight: FontWeight.w400,
//       ),
//
//       headline4: TextStyle(
//         color: AppColor.kTitleColor,
//         fontSize: 16.sp,
//         fontFamily: 'Readex',
//         fontWeight: FontWeight.w600,
//       ),
//
//       headline5: TextStyle(
//         color: AppColor.kTitleColor,
//         fontSize: 18.sp,
//         fontFamily: 'Readex',
//         fontWeight: FontWeight.w500,
//       ),
//
//       headline6: TextStyle(
//         color: AppColor.kTitleColor,
//         fontSize: 14.sp,
//         fontFamily: 'Readex',
//         fontWeight: FontWeight.w500,
//       ),
//
//       bodyText1: TextStyle(
//         color: AppColor.kTitleColor,
//         fontSize: 12.sp,
//         fontFamily: 'Readex',
//         fontWeight: FontWeight.w600,
//       ),
//       bodyText2: TextStyle(
//         color: AppColor.kAppBarColorBlack,
//         fontSize: 18.sp,
//         fontFamily: 'Readex',
//         fontWeight: FontWeight.w600,
//       ),
//
//     ),
//   ),
//   debugShowCheckedModeBanner: false,
//   initialRoute:SplashScreen.id,
// ),