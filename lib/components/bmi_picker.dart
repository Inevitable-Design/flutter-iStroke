import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:prob_stats_project/constants.dart';
import 'package:provider/provider.dart';
import 'package:prob_stats_project/providers/user_vitals_provider.dart';

Widget BMIPicker() {
  double bmi_0 = 0;
  double bmi_1 = 0;

  double getFinalBMI() {
    return bmi_0 + bmi_1;
  };

  void clearBMI() {
    bmi_0 = 0;
    bmi_1 = 0;
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
                  50,
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
                  bmi_0 = index.toDouble();
                  Provider.of<UserVitalsProvider>(context, listen: false).setBMI(getFinalBMI());
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
                  bmi_1 = (index / 10);
                  Provider.of<UserVitalsProvider>(context, listen: false).setBMI(getFinalBMI());
                  // clearBMI();
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
