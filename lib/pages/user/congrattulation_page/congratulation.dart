import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_bin1/data/model/get_user_model_service/get_user_model.dart';
import 'package:i_bin1/pages/user/home_user_page/home_user.dart';
import 'package:i_bin1/pages/user/home_user_page_Navbar/homescreen.dart';
import 'package:i_bin1/shared/componants/defoualt_custom_button.dart';



// ignore: must_be_immutable
class CongratulationPage extends StatelessWidget {
 CongratulationPage({super.key});
  static String id = "CongratulationPage";
  GetUserModel? getUserModel ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios_new_rounded,color: Colors.green,)),
      ),
      body:  Padding(
        padding: EdgeInsets.only(right: 14.w ,left: 14.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const  Spacer(
              flex: 6,
            ),
            Image.asset('assets/images/Illustration_Congratulations.png',
              width: double.infinity,
              height: 250.h,
            ),
            const Spacer(
              flex: 3,
            ),


            Text(
              'Congratulations',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline4,
            ),
            const Spacer(
              flex: 2,
            ),


              Text(
              'You have create an account, Discover our features with flexible experience.',
              maxLines: 3,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline3,

      ),
            const Spacer(
              flex: 3,
            ),


            DefualtCustomButton(
              function: (){
                Navigator.pushNamed(context, HomeUserScreen.id);
              },
              text: 'Discover Now',
              textSize: 14,
            ),
            const Spacer(
              flex: 7,
            ),


          ],
        ),
      ),
    );
  }
}
