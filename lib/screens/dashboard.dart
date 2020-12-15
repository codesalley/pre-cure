import 'package:flutter/material.dart';
import 'package:pre_cure/constants.dart';
import 'package:pre_cure/widgets/customListTile.dart';
import 'package:pre_cure/widgets/custome_nav_bar.dart';
import 'package:pre_cure/widgets/headerBar.dart';
import 'package:fl_chart/fl_chart.dart';

class DashBoard extends StatelessWidget {
  static String id = 'dashboardScreen';
  @override
  Widget build(BuildContext context) {
    final kHeight = MediaQuery.of(context).size.height;
    final kWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'res/main.png',
            ),
          )),
          child: BottomNavBbar(),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            'res/main.png',
          ),
        )),
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.only(bottom: 5),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      offset: Offset(-2, 5),
                      spreadRadius: 10,
                      blurRadius: 40,
                    )
                  ],
                  color: KmainColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                //height: kHeight * 0.92,
                width: kWidth,
                child: SafeArea(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            left: 30,
                            right: 30,
                            top: 10,
                            // bottom: 60,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(35),
                              bottomRight: Radius.circular(35),
                            ),
                          ),
                          width: kWidth,
                          height: kHeight * 0.35,
                          child: Column(
                            children: [
                              HeaderBar(),
                              Expanded(
                                child: PieChart(
                                  PieChartData(
                                      borderData: FlBorderData(show: false),
                                      sections: [
                                        PieChartSectionData(
                                          radius: 100,
                                          value: 40,
                                        ),
                                        PieChartSectionData(
                                          color: KmainColor,
                                          title: '40%',
                                          titleStyle: TextStyle(
                                            color: Colors.black87,
                                          ),
                                          radius: 100,
                                          value: 40,
                                        ),
                                      ]),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomListTile(
                          name: 'Total prescription',
                          icon: Icons.folder_open_outlined,
                          count: 9,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CustomListTile(
                          name: 'Completed prescription',
                          color: kCompleteColor,
                          icon: Icons.folder_open_outlined,
                          count: 4,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CustomListTile(
                          name: 'Active prescription',
                          color: kOngoingColor,
                          icon: Icons.folder_open_outlined,
                          count: 4,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CustomListTile(
                          name: 'Pending prescription',
                          color: kPendingColor,
                          icon: Icons.folder_open_outlined,
                          count: 1,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // SafeArea(
            //   child: Align(
            //     alignment: FractionalOffset.bottomCenter,
            //     child: BottomNavBbar(),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
