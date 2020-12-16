import 'package:flutter/material.dart';

import '../constants.dart';

class HeaderRow extends StatelessWidget {
  HeaderRow({this.icon, this.title});
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: kHeaderTextStyle,
        ),
        CircleAvatar(
          child: Icon(
            icon,
          ),
        )
      ],
    );
  }
}
