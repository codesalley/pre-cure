import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final kHeight = MediaQuery.of(context).size.height;
    final kWidth = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(
          'res/main.png',
        ),
      )),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            height: kHeight * 0.88,
            width: kWidth,
            child: Text('dd'),
          ),
          Container(
            child: Row(
              children: [
                Icon(
                  Icons.grid_on_sharp,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
