import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pre_cure/constants.dart';
import 'package:pre_cure/screens/dashboard.dart';
import 'package:pre_cure/screens/dugInfo.dart';
import 'package:pre_cure/screens/healthTips.dart';
import 'package:pre_cure/screens/taskScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentpageindex = 0;
  final PageStorageBucket bucket = PageStorageBucket();
  List<Widget> screens = [
    DashBoard(),
    TaskList(),
    DrugInfo(),
    HealthTips(),
  ];

  Widget currentpage = DashBoard();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: KmainColor,
        body: PageStorage(
          bucket: bucket,
          child: currentpage,
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 70,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('res/main.png'),
                fit: BoxFit.fitWidth,
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      currentpage = DashBoard();
                      currentpageindex = 0;
                    });
                  },
                  child: Icon(
                    Icons.widgets_outlined,
                    size: 25,
                    color:
                        currentpageindex == 0 ? Colors.white : Colors.white54,
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        currentpage = TaskList();
                        currentpageindex = 1;
                      });
                    },
                    child: Icon(
                      Icons.topic_outlined,
                      size: 25,
                      color:
                          currentpageindex == 1 ? Colors.white : Colors.white54,
                    )),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    backgroundColor: Colors.redAccent,
                    radius: 28,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      currentpage = DrugInfo();
                      currentpageindex = 2;
                    });
                  },
                  child: Icon(
                    Icons.event_note_outlined,
                    size: 25,
                    color:
                        currentpageindex == 2 ? Colors.white : Colors.white54,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      currentpage = HealthTips();
                      currentpageindex = 3;
                    });
                  },
                  child: Icon(
                    Icons.textsms_outlined,
                    size: 25,
                    color:
                        currentpageindex == 3 ? Colors.white : Colors.white54,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
