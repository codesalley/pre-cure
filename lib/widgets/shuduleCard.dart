import 'package:flutter/material.dart';

import '../constants.dart';

class SheduledCard extends StatelessWidget {
  final Color categoryColor;
  final String categoryTitle;
  final String title;
  final int drugNumber;
  final int numberOfTimes;
  final int dosetaken;
  final int doseleft;
  SheduledCard(
      {this.categoryColor,
      this.categoryTitle,
      this.doseleft,
      this.dosetaken,
      this.drugNumber,
      this.numberOfTimes,
      this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: double.maxFinite,
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 150,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            categoryTitle,
            style: kDaysTextstyle.copyWith(
              color: categoryColor,
            ),
          ),
          Divider(
            thickness: 2,
            color: Colors.deepPurpleAccent.withOpacity(0.3),
          ),
          Expanded(
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 0,
              ),
              leading: VerticalDivider(
                color: Colors.redAccent,
                width: 10,
                thickness: 5,
              ),
              title: Text(
                title,
                style: kHeaderTextStyle.copyWith(
                  fontSize: 15,
                ),
              ),
              subtitle: Text(
                '$drugNumber tablets $numberOfTimes times a day',
                style: kDaysTextstyle,
              ),
              trailing: Icon(Icons.more_vert_rounded),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            '$dosetaken Dose taken $doseleft more',
            style: kDaysTextstyle,
          ),
        ],
      ),
    );
  }
}
