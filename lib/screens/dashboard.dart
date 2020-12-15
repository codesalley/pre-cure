import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pre_cure/constants.dart';

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
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      left: 30,
                      right: 30,
                      top: 10,
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Dashboard',
                              style: TextStyle(
                                fontSize: 25,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            CircleAvatar(
                              child: Icon(Icons.person),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: [
                        Card(
                          elevation: 1,
                          shadowColor: KmainColor,
                          child: Container(
                            height: 70,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: ListTile(
                                //tileColor: Colors.white,
                                leading: Container(
                                  decoration: BoxDecoration(
                                    color: KmainColor,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  width: 50,
                                  height: 50,
                                  child: Icon(
                                    Icons.folder_open_rounded,
                                    size: 30,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SafeArea(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(left: 30, right: 30),
                // margin: EdgeInsets.only(bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.apps,
                          color: Colors.white60,
                          size: 35,
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Icon(
                          FontAwesomeIcons.stream,
                          color: Colors.white60,
                          size: 25,
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
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.featured_play_list_outlined,
                          color: Colors.white60,
                          size: 30,
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Icon(
                          FontAwesomeIcons.commentDots,
                          color: Colors.white60,
                          size: 30,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
