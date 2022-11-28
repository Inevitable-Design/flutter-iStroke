import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:prob_stats_project/constants.dart';
import 'package:provider/provider.dart';
import 'package:prob_stats_project/providers/user_vitals_provider.dart';

Widget HypertensionPicker() {
  int intdex = 0;

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
              '0',
              style: kTextStyle_w400.copyWith(fontSize: 25.0),
            ),
          ),
          Center(
            child: Text(
              '1',
              style: kTextStyle_w400.copyWith(fontSize: 25.0),
            ),
          ),
        ],
        onSelectedItemChanged: (index) {
          setState() {
            intdex = index;
          }
          Provider.of<UserVitalsProvider>(context, listen: false).setHypertension(index);
        },
      ),
    ),
  );
}
