import 'package:flutter/material.dart';
import 'package:prob_stats_project/constants.dart';
import 'package:prob_stats_project/components/age_picker.dart';
import 'package:prob_stats_project/components/bmi_picker.dart';
import 'package:prob_stats_project/components/enter_vitals_row.dart';
import 'package:prob_stats_project/components/ever_married_picker.dart';
import 'package:prob_stats_project/components/gender_picker.dart';
import 'package:prob_stats_project/components/glucose_level_picker.dart';
import 'package:prob_stats_project/components/heart_disease_picker.dart';
import 'package:prob_stats_project/components/hypertension_picker.dart';
import 'package:prob_stats_project/components/residence_picker.dart';
import 'package:prob_stats_project/components/smoking_picker.dart';
import 'package:prob_stats_project/components/stroke_picker.dart';
import 'package:prob_stats_project/components/work_type_picker.dart';
import 'package:prob_stats_project/providers/user_vitals_provider.dart';
import 'package:provider/provider.dart';

class VitalsScreen extends StatelessWidget {
  const VitalsScreen({Key? key}) : super(key: key);

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
                  'Vitals',
                  style: kTextStyle_w900.copyWith(fontSize: 30.0),
                ),
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/vector.png'),
                  backgroundColor: Colors.lightBlue,
                  radius: 18.0,
                ),
              ],
            ),
            const SizedBox(height: 25.0),
            Container(
              padding: const EdgeInsets.only(left: 15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  EnterVitalsRow(
                    title: 'Gender',
                    action: GenderPicker(),
                    status: Provider.of<UserVitalsProvider>(context).getGender,
                  ),
                  const Divider(
                    color: Color(0xFFd2d3d5),
                    height: 1.0,
                  ),
                  EnterVitalsRow(
                    title: 'Age',
                    action: AgePicker(),
                    status: Provider.of<UserVitalsProvider>(context)
                        .getAge
                        .toString(),
                  ),
                  const Divider(
                    color: Color(0xFFd2d3d5),
                    height: 1.0,
                  ),
                  EnterVitalsRow(
                    title: 'Hypertension',
                    action: HypertensionPicker(),
                    status: Provider.of<UserVitalsProvider>(context)
                        .getHypertension
                        .toString(),
                  ),
                  const Divider(
                    color: Color(0xFFd2d3d5),
                    height: 1.0,
                  ),
                  EnterVitalsRow(
                    title: 'Heart Disease History',
                    action: HeartDiseasePicker(),
                    status: Provider.of<UserVitalsProvider>(context)
                        .getHeartDisease
                        .toString(),
                  ),
                  const Divider(
                    color: Color(0xFFd2d3d5),
                    height: 1.0,
                  ),
                  EnterVitalsRow(
                    title: 'Ever Married',
                    action: EverMarriedPicker(),
                    status: Provider.of<UserVitalsProvider>(context)
                        .getEverMarried
                        .toString(),
                  ),
                  const Divider(
                    color: Color(0xFFd2d3d5),
                    height: 1.0,
                  ),
                  EnterVitalsRow(
                    title: 'Work Type',
                    action: WorkTypePicker(),
                    status: Provider.of<UserVitalsProvider>(context)
                        .getWorkType
                        .toString(),
                  ),
                  const Divider(
                    color: Color(0xFFd2d3d5),
                    height: 1.0,
                  ),
                  EnterVitalsRow(
                    title: 'Residence',
                    action: ResidencePicker(),
                    status: Provider.of<UserVitalsProvider>(context)
                        .getResidenceType
                        .toString(),
                  ),
                  const Divider(
                    color: Color(0xFFd2d3d5),
                    height: 1.0,
                  ),
                  EnterVitalsRow(
                    title: 'Average Glucose Level',
                    action: GlucoseLevelPicker(),
                    status: Provider.of<UserVitalsProvider>(context)
                        .getAvgGlucoseLevel
                        .toString(),
                  ),
                  const Divider(
                    color: Color(0xFFd2d3d5),
                    height: 1.0,
                  ),
                  EnterVitalsRow(
                    title: 'BMI',
                    action: BMIPicker(),
                    status: Provider.of<UserVitalsProvider>(context)
                        .getBMI
                        .toString(),
                  ),
                  const Divider(
                    color: Color(0xFFd2d3d5),
                    height: 1.0,
                  ),
                  EnterVitalsRow(
                    title: 'Smoking Status',
                    action: SmokingPicker(),
                    status: Provider.of<UserVitalsProvider>(context)
                        .getSmokingStatus
                        .toString(),
                  ),
                  // const Divider(
                  //   color: Color(0xFFd2d3d5),
                  //   height: 1.0,
                  // ),
                  // EnterVitalsRow(
                  //   title: 'Stroke',
                  //   action: StrokePicker(),
                  //   status: Provider.of<UserVitalsProvider>(context)
                  //       .getStroke
                  //       .toString(),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
