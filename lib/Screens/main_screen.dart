import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:prob_stats_project/Screens/home_screen.dart';
import 'package:prob_stats_project/Screens/vitals_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  static String id = 'main_screen';

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: Colors.white.withOpacity(0.25),
        onTap: (index) {

        },
        items: const [
          BottomNavigationBarItem(
            label: 'Summary',
            icon: Icon(CupertinoIcons.heart_fill),
          ),
          BottomNavigationBarItem(
            label: 'Vitals',
            icon: Icon(CupertinoIcons.person_2_fill),
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return HomeScreen();
          case 1:
          default:
            return VitalsScreen();
        };
      },
    );
  }
}
