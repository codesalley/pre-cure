import 'package:flutter/material.dart';
import 'package:pre_cure/screens/dashboard.dart';
import 'package:pre_cure/screens/dugInfo.dart';
import 'package:pre_cure/screens/healthTips.dart';
import 'package:pre_cure/screens/taskScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // vi: VisualDensity.adaptivePlatformDensity,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryTextTheme: TextTheme(
          bodyText1: TextStyle(fontFamily: 'Poppins'),
          bodyText2: TextStyle(fontFamily: 'Poppins'),
        ),
      ),
      home: DashBoard(),

      initialRoute: DashBoard.id,
      routes: {
        DashBoard.id: (context) => DashBoard(),
        TaskList.id: (context) => TaskList(),
        DrugInfo.id: (context) => DrugInfo(),
        HealthTips.id: (context) => HealthTips()
      },
    );
  }
}
