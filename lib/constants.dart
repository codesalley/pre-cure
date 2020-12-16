import 'package:flutter/material.dart';

const KmainColor = Color(0xffEBF1FF);

const kCompleteColor = Colors.green;

const kPendingColor = Colors.red;

const kOngoingColor = Colors.purple;
const kInputBorder = Colors.blueGrey;

const kHeaderTextStyle = TextStyle(
  fontFamily: 'Poppins',
  fontSize: 25,
  fontWeight: FontWeight.w600,
);

const ktileTextStyle = TextStyle(
  fontFamily: 'Poppins',
  fontSize: 16,
  fontWeight: FontWeight.w400,
);

const kaddBottomTextstyle = TextStyle(
  color: Colors.white,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w600,
);

const kDaysTextstyle = TextStyle(
  color: Colors.blueGrey,
  fontFamily: 'Poppins',
);
const kDaysDubtitileTextStyle = TextStyle(
  color: Colors.black,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w800,
);

final kEnbledBorderStyle = InputDecoration(
  focusColor: Colors.red,
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: Colors.blueAccent, width: 2),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: Colors.greenAccent, width: 2),
  ),
);
