import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/const/color.dart';
import 'package:food_delivery_app/pages/home_page.dart';
import 'package:food_delivery_app/pages/messaging_page.dart';
import 'package:food_delivery_app/pages/profile_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  List<Widget> tabItems = [
    HomePage(),
    MessagingPage(),
    ProfilePage(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: tabItems[_selectedIndex],
      ),
      bottomNavigationBar: FlashyTabBar(
        animationCurve: Curves.linear,
        selectedIndex: _selectedIndex,
        iconSize: 25.sp,
        showElevation: false, // use this to remove appBar's elevation
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
        items: [
          FlashyTabBarItem(
            icon: Icon(
              Icons.home,
              color: primaryDeepNevi,
            ),
            title: Text(
              'Home',
              style: TextStyle(fontSize: 16.sp),
            ),
          ),
          FlashyTabBarItem(
            icon: Icon(
              Icons.message,
              color: primaryDeepNevi,
            ),
            title: Text(
              'Chat',
              style: TextStyle(fontSize: 16.sp),
            ),
          ),
          FlashyTabBarItem(
            icon: Icon(
              Icons.person,
              color: primaryDeepNevi,
            ),
            title: Text(
              'Profile',
              style: TextStyle(fontSize: 16.sp),
            ),
          ),
        ],
      ),
    );
  }
}
