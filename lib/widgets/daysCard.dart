import 'package:flutter/material.dart';

import '../constants.dart';

class DaysCard extends StatelessWidget {
  final String day;
  final String date;
  final Color color;
  DaysCard({this.date, this.day, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 75,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '$day',
            style: kDaysTextstyle,
          ),
          Text(
            '$date',
            style: kDaysDubtitileTextStyle,
          ),
          Divider(
            thickness: 1,
            color: color,
          )
        ],
      ),
    );
  }
}
