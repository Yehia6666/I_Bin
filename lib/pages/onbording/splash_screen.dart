import 'package:flutter/material.dart';
import 'package:i_bin1/pages/onbording/onbording.dart';
import 'package:lottie/lottie.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static String id = 'SplashScreen' ;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 9),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const OnBoarding(),
      ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Spacer(
              flex: 2,
            ),
            Center(
              child: Lottie.asset('assets/Lottie/Splash_Screen_Animation.json'),
            ),
            const Spacer(
              flex: 10,
            ),
             Text('Developed By Our Team',
              style: Theme.of(context).textTheme.headline2,
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}























// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:i_bin1/pages/onbording1.dart';
//
// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});
//   static String id = 'SplashScreen' ;
//
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//
//   @override
//   void initState() {
//     Future.delayed(Duration(seconds :3) ,(){
//       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OnBording1()));
//     } );
//
//     // TODO: implement initState
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(top: 150.0),
//             child: Image.asset("assets/images/Logo.svg" ,
//             width: double.infinity,
//               height: 150,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
