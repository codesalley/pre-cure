import 'package:flutter/material.dart';

import '../constants.dart';

class CustomTile extends StatelessWidget {
  CustomTile({this.iconData, this.iconColor, this.title, this.tracker});

  final IconData iconData;
  final String title;
  final int tracker;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 20),
          leading: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: KmainColor,
              borderRadius: BorderRadius.circular(15),
            ),
            //color: KmainColor,
            child: Icon(
              iconData,
              color: iconColor,
              size: 26,
            ),
          ),
          title: Text(
            title,
            style: ktileTextStyle,
          ),
          trailing: Text(
            tracker == null ? '0' : '$tracker',
            style: ktileTextStyle,
          ),
        ),
      ),
    );
  }
}
