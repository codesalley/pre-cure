import 'package:flutter/material.dart';
import 'package:pre_cure/widgets/customTile.dart';
import 'package:pre_cure/widgets/headerRow.dart';

import '../constants.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final kheight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              height: kheight * 0.4,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Column(
                children: [
                  HeaderRow(
                    title: 'Dashboard',
                    icon: Icons.person,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CustomTile(
              title: 'Total prescription',
              iconData: Icons.folder_outlined,
              tracker: 20,
            ),
            CustomTile(
              title: 'Completed prescription',
              iconData: Icons.check_circle_outline_outlined,
              iconColor: kCompleteColor,
              tracker: 5,
            ),
            CustomTile(
              title: 'Active prescription',
              iconData: Icons.work_outline_rounded,
              iconColor: kOngoingColor,
              tracker: 2,
            ),
            CustomTile(
              title: 'Pending prescription',
              iconData: Icons.folder_outlined,
              iconColor: kPendingColor,
              tracker: 10,
            ),
          ],
        ),
      ),
    );
  }
}
