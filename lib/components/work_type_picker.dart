import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:prob_stats_project/constants.dart';
import 'package:provider/provider.dart';
import 'package:prob_stats_project/providers/user_vitals_provider.dart';

Widget WorkTypePicker() {
  final items = [
    'Children',
    'Govt_jov',
    'Never_worked',
    'Private',
    'Self-Employed',
  ];

  return SizedBox(
    height: 350.0,
    child: StatefulBuilder(
      builder: (context, setState) => CupertinoPicker(
        itemExtent: 48.0,
        selectionOverlay: CupertinoPickerDefaultSelectionOverlay(
          background: Colors.pink.withOpacity(0.2),
        ),
        children: [
          Center(
            child: Text(
              'Children',
              style: kTextStyle_w400.copyWith(fontSize: 25.0),
            ),
          ),
          Center(
            child: Text(
              'Govt_jov',
              style: kTextStyle_w400.copyWith(fontSize: 25.0),
            ),
          ),
          Center(
            child: Text(
              'Never_worked',
              style: kTextStyle_w400.copyWith(fontSize: 25.0),
            ),
          ),
          Center(
            child: Text(
              'Private',
              style: kTextStyle_w400.copyWith(fontSize: 25.0),
            ),
          ),
          Center(
            child: Text(
              'Self-Employed',
              style: kTextStyle_w400.copyWith(fontSize: 25.0),
            ),
          ),
        ],
        onSelectedItemChanged: (index) {
          Provider.of<UserVitalsProvider>(context, listen: false).setWorkType(items[index]);
        },
      ),
    ),
  );
}
