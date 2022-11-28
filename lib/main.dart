import 'package:flutter/material.dart';
import 'package:prob_stats_project/Screens/get_vitals_screen.dart';
import 'package:prob_stats_project/Screens/home_screen.dart';
import 'package:prob_stats_project/Screens/main_screen.dart';
import 'package:prob_stats_project/Screens/welcome_screen.dart';
import 'package:prob_stats_project/providers/user_vitals_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UserVitalsProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        routes: {
          WelcomeScreen.id: (context) => WelcomeScreen(),
          HomeScreen.id: (context) => HomeScreen(),
          MainScreen.id: (context) => MainScreen(),
          GetVitalsScreen.id: (context) => GetVitalsScreen(),
        },
        initialRoute: WelcomeScreen.id,
        home: WelcomeScreen(),
      ),
    );
  }
}
