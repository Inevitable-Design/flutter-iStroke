import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prob_stats_project/components/stroke_chance_card.dart';
import 'package:prob_stats_project/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String id = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        color: const Color(0xFFf2f3f7),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 80.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Summary',
                  style: kTextStyle_w900.copyWith(fontSize: 30.0),
                ),
                const CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/vector.png'
                  ),
                  backgroundColor: Colors.lightBlue,
                  radius: 18.0,
                ),
              ],
            ),
            const SizedBox(height: 25.0),
            Text(
              'Current Stroke Chances',
              style: kTextStyle_w900.copyWith(fontSize: 20.0),
            ),
            const SizedBox(height: 10.0),
            StrokeChanceCard(),
          ],
        ),
      ),
    );
  }
}
