import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pre_cure/constants.dart';
import 'package:pre_cure/widgets/customListTile.dart';
import 'package:pre_cure/widgets/custome_nav_bar.dart';
import 'package:pre_cure/widgets/headerBar.dart';

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
            height: kHeight * 0.88,
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
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomListTile(),
                    SizedBox(
                      height: 10,
                    ),
                    CustomListTile(),
                    SizedBox(
                      height: 10,
                    ),
                    CustomListTile(),
                    SizedBox(
                      height: 10,
                    ),
                    CustomListTile(),
                  ],
                ),
              ),
            ),
          ),
          SafeArea(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: BottomNavBbar(),
            ),
          ),
        ],
      ),
    );
  }
}
