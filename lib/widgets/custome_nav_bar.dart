import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBbar extends StatelessWidget {
  const BottomNavBbar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double iconSize = 30;

    return Container(
      margin: EdgeInsets.only(left: 30, right: 30),
      // margin: EdgeInsets.only(bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.apps,
                color: Colors.white,
                size: iconSize,
              ),
              SizedBox(
                width: 40,
              ),
              Icon(
                FontAwesomeIcons.stream,
                color: Colors.white54,
                size: 20,
              ),
            ],
          ),
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 28,
              backgroundColor: Colors.redAccent,
              child: Icon(
                Icons.add,
                size: 40,
                color: Colors.white,
              ),
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.featured_play_list_outlined,
                color: Colors.white54,
                size: 25,
              ),
              SizedBox(
                width: 40,
              ),
              Icon(
                FontAwesomeIcons.commentDots,
                color: Colors.white54,
                size: 25,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
