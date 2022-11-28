import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prob_stats_project/constants.dart';
import 'package:provider/provider.dart';
import 'package:prob_stats_project/providers/user_vitals_provider.dart';
import 'package:http/http.dart' as http;

class StrokeChanceCard extends StatefulWidget {
  String level = "NA";
  String message = "Tap on the calculate key";
  String percentage = "NA";
  int intensity = 0;
  String one = "1";
  String two = "2";
  String three = "3";

  @override
  State<StrokeChanceCard> createState() => _StrokeChanceCardState();
}

class _StrokeChanceCardState extends State<StrokeChanceCard> {
  Future<dynamic> makeRequest(String url) async {
    var URL = Uri.parse(url);
    http.Response response = await http.get(URL);
    String data = response.body;
    dynamic decodedData = jsonDecode(data);
    print(data);
    print(decodedData["Probability"]);
    setState(() {
      widget.percentage = decodedData["Probability"];
      widget.intensity = int.parse(decodedData["Intensity"]);
    });
    return decodedData["Probability"];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                const WidgetSpan(
                  child: Icon(
                    CupertinoIcons.flame_fill,
                    color: Colors.pink,
                    // size: 20.0,
                  ),
                ),
                TextSpan(
                  text: widget.level,
                  style: kTextStyle_w900.copyWith(
                    fontSize: 18.0,
                    color: Colors.pink,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          Text(
            widget.message,
            // "Your risk level is significantly high. We suggest you to consult a medical professional",
            style: kTextStyle_w700.copyWith(fontSize: 15.0),
          ),
          const SizedBox(height: 10.0),
          const Divider(
            color: Color(0xFFd2d3d5),
            height: 1.0,
          ),
          const SizedBox(height: 10.0),
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  // text: '0.69',
                  text: widget.percentage.toString(),
                  style: kTextStyle_w900.copyWith(fontSize: 50.0),
                ),
                TextSpan(
                  text: '  %chances',
                  style: kTextStyle_w900.copyWith(
                    fontSize: 15.0,
                    color: const Color(0xFF8a8a8d),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          Row(
            children: [
              Expanded(
                child: CupertinoButton(
                  color: Colors.pink,
                  child: Text(
                    'Refresh',
                    style: kTextStyle_w700.copyWith(
                      fontSize: 15.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    String url =
                        'http://10.12.34.140:5050/api/v1/?gender=${Provider.of<UserVitalsProvider>(context, listen: false).getGender}&age=${Provider.of<UserVitalsProvider>(context, listen: false).getAge}.0&hypertension=${Provider.of<UserVitalsProvider>(context, listen: false).getHypertension}&heart_disease=${Provider.of<UserVitalsProvider>(context, listen: false).getHeartDisease}&married=${Provider.of<UserVitalsProvider>(context, listen: false).getEverMarried}&work_type=${Provider.of<UserVitalsProvider>(context, listen: false).getWorkType}&residence_type=${Provider.of<UserVitalsProvider>(context, listen: false).getResidenceType}&avg_glucose_level=${Provider.of<UserVitalsProvider>(context, listen: false).getAvgGlucoseLevel}&bmi=${Provider.of<UserVitalsProvider>(context, listen: false).getBMI}&smoking_status=${Provider.of<UserVitalsProvider>(context, listen: false).getSmokingStatus}';
                    makeRequest(url);
                    print(widget.intensity);
                    if (widget.intensity ==  1) {
                      widget.level = "Low";
                      widget.message = "Everything looks fine. Medical checkups can offer additional insights.";
                    } else if (widget.intensity == 2) {
                      widget.level = "Medium";
                      widget.message = "Your risk level is moderate. Frequent Medical checkups are suggested.";
                    } else if (widget.intensity == 3) {
                      widget.level = "High";
                      widget.message = "Your risk level is significantly high. We suggest you to consult a medical professional";
                    }
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
