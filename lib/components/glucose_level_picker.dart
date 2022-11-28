import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:prob_stats_project/constants.dart';
import 'package:provider/provider.dart';
import 'package:prob_stats_project/providers/user_vitals_provider.dart';

Widget GlucoseLevelPicker() {
  double avg_glucose_level_0 = 0;
  double avg_glucose_level_1 = 0;
  double avg_glucose_level_2 = 0;

  double getFinalAvgGlucoseLevel() {
    return avg_glucose_level_0 + avg_glucose_level_1 + avg_glucose_level_2;
  };

  void clearAvgGlucoseLevels() {
    avg_glucose_level_0 = 0;
    avg_glucose_level_1 = 0;
    avg_glucose_level_2 = 0;
  }

  return SizedBox(
    height: 350.0,
    child: StatefulBuilder(
      builder: (context, setState) => Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: CupertinoPicker(
                itemExtent: 48.0,
                selectionOverlay: CupertinoPickerDefaultSelectionOverlay(
                  background: Colors.pink.withOpacity(0.2),
                ),
                children: List.generate(
                  300,
                  (index) {
                    return Center(
                      child: Text(
                        index.toString(),
                        style: kTextStyle_w400.copyWith(fontSize: 25.0),
                      ),
                    );
                  },
                ),
                onSelectedItemChanged: (index) {
                  avg_glucose_level_0 = index.toDouble();
                  Provider.of<UserVitalsProvider>(context, listen: false).setAvgGlucoseLevel(getFinalAvgGlucoseLevel());
                },
              ),
            ),
            Center(
              child: Text(
                '.',
                style: kTextStyle_w900.copyWith(fontSize: 25.0),
              ),
            ),
            Expanded(
              child: CupertinoPicker(
                itemExtent: 48.0,
                selectionOverlay: CupertinoPickerDefaultSelectionOverlay(
                  background: Colors.pink.withOpacity(0.2),
                ),
                children: List.generate(
                  10,
                  (index) {
                    return Center(
                      child: Text(
                        index.toString(),
                        style: kTextStyle_w400.copyWith(fontSize: 25.0),
                      ),
                    );
                  },
                ),
                onSelectedItemChanged: (index) {
                  avg_glucose_level_1 = (index / 10);
                  Provider.of<UserVitalsProvider>(context, listen: false).setAvgGlucoseLevel(getFinalAvgGlucoseLevel());
                },
              ),
            ),
            Expanded(
              child: CupertinoPicker(
                itemExtent: 48.0,
                selectionOverlay: CupertinoPickerDefaultSelectionOverlay(
                  background: Colors.pink.withOpacity(0.2),
                ),
                children: List.generate(
                  10,
                  (index) {
                    return Center(
                      child: Text(
                        index.toString(),
                        style: kTextStyle_w400.copyWith(fontSize: 25.0),
                      ),
                    );
                  },
                ),
                onSelectedItemChanged: (index) {
                  avg_glucose_level_2 += (index / 100);
                  Provider.of<UserVitalsProvider>(context, listen: false)
                      .setAvgGlucoseLevel(getFinalAvgGlucoseLevel());
                  // clearAvgGlucoseLevels();
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
