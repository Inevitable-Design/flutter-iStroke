import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:prob_stats_project/constants.dart';

class WelcomeScreenRow extends StatelessWidget {
  WelcomeScreenRow(
      {required this.icon, required this.title, required this.content});

  final IconData icon;
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: Icon(
            icon,
            size: 60.0,
            color: Colors.pink,
          ),
        ),
        Flexible(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: kTextStyle_w700.copyWith(fontSize: 15.0),
              ),
              Text(
                content,
                style: kTextStyle_w500.copyWith(fontSize: 15.0),
              ),
            ],
          ),
        ),
      ],
    );
  }
}