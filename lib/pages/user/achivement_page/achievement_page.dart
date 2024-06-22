import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_bin1/pages/user/achivement_page/achievement_card.dart';


class AchievementPage extends StatefulWidget {
  const AchievementPage({super.key});

  static String id = 'AchievementPage' ;

  @override
  State<AchievementPage> createState() => _AchievementPageState();
}

class _AchievementPageState extends State<AchievementPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          'Achievement',
          style:  Theme.of(context).textTheme.headline1,
        ),
          centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.w),
        child: Column(
          children: [
            SizedBox(height: 16.h,),
        Expanded(
          child: AchievementCard(
            imageUrl: 'assets/images/Avatar.svg',
            titleText: 'Segregate 100 metal \n element and get 50 point',
            donationValue: 60.0,
            maxValIndicator: 150,
          ),
        ),
        Expanded(
              child: AchievementCard(
                imageUrl: 'assets/images/blastic.svg',
                  titleText: 'Segregate 150 In-organic\nelement and get 75 point',
                donationValue: 90,
                maxValIndicator: 150,
              ),
            ),
        Expanded(
          child: AchievementCard(
            imageUrl: 'assets/images/organic.svg',
            titleText: 'Segregate 200 organic \n element and get 75 point',
            donationValue: 80.0,
            maxValIndicator: 200,
          ),
        ),
        Expanded(
              child: AchievementCard(
                imageUrl: 'assets/images/collecter.svg',
                  titleText: 'Get 1st place 3 times in \n a row and get 125 point',
                donationValue: 20,
                maxValIndicator: 5,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
