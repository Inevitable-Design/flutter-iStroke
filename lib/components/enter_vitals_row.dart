import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prob_stats_project/constants.dart';
import 'package:prob_stats_project/providers/user_vitals_provider.dart';
import 'package:provider/provider.dart';

class EnterVitalsRow extends StatefulWidget {
  const EnterVitalsRow({required this.title, required this.action, required this.status});
  final String title;
  final String status;
  final Widget action;

  @override
  State<EnterVitalsRow> createState() => _EnterVitalsRowState();
}

class _EnterVitalsRowState extends State<EnterVitalsRow> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showCupertinoModalPopup(
          context: context,
          builder: (context) => CupertinoActionSheet(
            actions: [widget.action],
            cancelButton: CupertinoActionSheetAction(
              child: Text(
                'Cancel',
                style: kTextStyle_w400.copyWith(
                  color: Colors.pink,
                ),
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(right: 15.0, top: 15.0, bottom: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(
              widget.title,
              style: kTextStyle_w900.copyWith(fontSize: 18.0),
            ),
            Text(
              widget.status,
              style: kTextStyle_w900.copyWith(
                fontSize: 15.0,
                color: const Color(0xFF8a8a8d),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
