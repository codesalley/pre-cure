import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pre_cure/screens/dashboard.dart';
import 'package:pre_cure/widgets/categoryCard.dart';
import 'package:pre_cure/widgets/inputCard.dart';

import '../constants.dart';

class AddNew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double kheight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: SafeArea(
      child: Container(
        width: double.infinity,
        height: kheight,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'res/main.png',
              ),
              fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 100,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Icon(
                        Icons.keyboard_arrow_left_outlined,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                    Text(
                      'ADD SESSION',
                      style: kHeaderTextStyle.copyWith(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: kheight - 125,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                decoration: BoxDecoration(
                  color: KmainColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InputCard(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'CATEGORY',
                          style: kDaysTextstyle.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CategoryCard(
                              selectedCatecory: 'DRUG',
                              color: Colors.purpleAccent.withOpacity(0.4),
                            ),
                            CategoryCard(
                              selectedCatecory: 'THERAPY',
                              color: Colors.redAccent.withOpacity(0.4),
                            ),
                            CategoryCard(
                              selectedCatecory: 'WORKOUT',
                              color: Colors.greenAccent.withOpacity(0.4),
                            ),
                            
                          ],
                        )
                      ],
                    ),
                    InputCard(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
