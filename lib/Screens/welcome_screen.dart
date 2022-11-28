import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:prob_stats_project/Screens/get_vitals_screen.dart';
import 'package:prob_stats_project/components/welcome_screen_row.dart';
import 'package:prob_stats_project/constants.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  static String id = 'welcome_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 100),
            RichText(
              text: TextSpan(
                text: "Welcome to\n",
                style: kTextStyle_w900,
                children: <TextSpan>[
                  TextSpan(
                    text: "iStroke",
                    style: kTextStyle_w900.copyWith(color: Colors.pink),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'Great new tool for keeping for brain stroke chances in check.',
              style: kTextStyle_w500,
            ),
            const SizedBox(height: 30.0),
            WelcomeScreenRow(
                icon: CupertinoIcons.bandage_fill,
                title: 'Know your risk',
                content:
                    'Prevent a stroke by being proactive and keeping your stroke chances in check.'),
            const SizedBox(height: 15.0),
            WelcomeScreenRow(
                icon: CupertinoIcons.bolt,
                title: 'Merge your fitness journey',
                content:
                    'Connect to fitness apps like google fit and apple health kit to import data.'),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: CupertinoButton(
                    color: Colors.pink,
                    child: Text(
                      'Continue',
                      style: kTextStyle_w400.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, GetVitalsScreen.id);
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40.0),
          ],
        ),
      ),
    );
  }
}
