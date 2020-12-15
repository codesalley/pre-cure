import 'package:flutter/material.dart';
import 'package:pre_cure/screens/dashboard.dart';

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
      ),
      home: Scaffold(
        body: DashBoard(),
      ),
    );
  }
}
