import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:prokit_flutter/fullApps/flixv2/screen/dashboard_screens/activity_screen.dart';
import 'package:prokit_flutter/fullApps/flixv2/screen/dashboard_screens/home_screen.dart';
import 'package:prokit_flutter/fullApps/flixv2/screen/dashboard_screens/profile_screen.dart';
import 'package:prokit_flutter/fullApps/flixv2/screen/dashboard_screens/search_screen.dart';

class DashboardScreen extends StatefulWidget {
  State<DashboardScreen> createState() => DashboardScreenState();
}

class DashboardScreenState extends State<DashboardScreen> {
  int currentIndex = 0;

  PageController pageController = PageController(initialPage: 0, keepPage: true);

  void initState() {
    super.initState();
  }

  late DateTime initialBackPressTime;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        currentIndex = 0;
        setState(() {});

        return Future.value(true);
      },
      child: Scaffold(
        body: [
          HomeScreen(),
          SearchScreen(),
          ActivityScreen(),
          ProfileScreen(),
        ][currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            currentIndex = value;
            setState(() {});
          },
          selectedItemColor: Colors.red,
          backgroundColor: context.cardColor,
          items: [
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.home_filled, color: Colors.red),
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.search_rounded, color: Colors.red),
              icon: Icon(Icons.search_outlined),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.favorite_rounded, color: Colors.red),
              icon: Icon(Icons.favorite_border_outlined),
              label: 'Activity',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.account_circle_rounded, color: Colors.red),
              icon: Icon(Icons.account_circle_outlined),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
