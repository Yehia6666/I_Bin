import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:i_bin1/pages/provider_page/home_provider.dart';
import 'package:i_bin1/pages/provider_page/profile_provider.dart';
import 'package:i_bin1/pages/provider_page/request/RequestDonations.dart';
import 'package:i_bin1/pages/provider_page/user_screen_provider/user_screen_provider.dart';

class BottomNavBar extends StatefulWidget {
   final int selectedIndex;
  final Function(int) onItemTapped;

  const BottomNavBar({Key? key, required this.selectedIndex, required this.onItemTapped}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: InkWell(
            onTap: () {
              setState(() {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) =>const HomeProvider()),
                );
              });
            },
            child: SvgPicture.asset(
              'assets/images/house_Icon.svg',
              width: 24.0.w,
              height: 24.0.h,
              color: widget.selectedIndex == 0 ? Colors.green : Colors.grey,
            ),
          ),
          //icon: Icon(Icons.home, color: widget.selectedIndex == 0 ? Colors.green : Colors.grey),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: InkWell(
            onTap: () {
             setState(() {
               Navigator.pushReplacement(
                 context,
                 MaterialPageRoute(builder: (context) =>const RequestDonations()),
               );
             });
            },
            child: SvgPicture.asset(
              'assets/images/Shipping_Icon.svg',
              width: 24.0.w,
              height: 24.0.h,
              color: widget.selectedIndex == 1 ? Colors.green : Colors.grey,
            ),
          ),
         // icon: Icon(Icons.shopping_cart, color: widget.selectedIndex == 1 ? Colors.green : Colors.grey),
          label: 'Requests',
        ),
        BottomNavigationBarItem(
          icon: InkWell(
            onTap: () {
              setState(() {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) =>const UserScreenProvider()),
                );
              });
            },
            child: SvgPicture.asset(
              'assets/images/Users_Icon.svg',
              width: 24.0.w,
              height: 24.0.h,
              color: widget.selectedIndex == 2 ? Colors.green : Colors.grey,
            ),
          ),

          // icon: Icon(Icons.people, color: widget.selectedIndex == 2 ? Colors.green : Colors.grey),
          label: 'Users',
        ),
        BottomNavigationBarItem(
         icon: InkWell(
           onTap: () {
            setState(() {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) =>const ProfileProviderScreen()),
              );
            });
           },
           child: SvgPicture.asset(
             'assets/images/Profile_Icon.svg',
             width: 24.0.w,
             height: 24.0.h,
             color: widget.selectedIndex == 3 ? Colors.green : Colors.grey,
           ),
         ),
          // icon: Icon(Icons.person, color: widget.selectedIndex == 3 ? Colors.green : Colors.grey),
          label: 'Profile',
        ),
      ],
      currentIndex: widget.selectedIndex,
      onTap: widget.onItemTapped,
      selectedItemColor: Colors.green,
     // تعيين لون الايقونة المحددة باللون الأخضر
    );
  }
}
