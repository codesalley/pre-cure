import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pre_cure/constants.dart';
import 'package:pre_cure/screens/addScreen.dart';
import 'package:pre_cure/widgets/addBottom.dart';
import 'package:pre_cure/widgets/daysCard.dart';
import 'package:pre_cure/widgets/headerRow.dart';
import 'package:pre_cure/widgets/shuduleCard.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              HeaderRow(
                title: 'Prescriptions',
                icon: Icons.person,
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '24 December 2020',
                      ),
                      Text(
                        'Today',
                        style: kHeaderTextStyle.copyWith(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () => Get.to(AddNew()),
                    child: AddBottom(),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DaysCard(
                    day: 'MON',
                    date: '21',
                  ),
                  DaysCard(
                    day: 'TUE',
                    date: '22',
                  ),
                  DaysCard(
                    day: 'WED',
                    date: '23',
                  ),
                  DaysCard(
                    day: 'THUR',
                    date: '24',
                    color: Colors.blueAccent,
                  ),
                  DaysCard(
                    day: 'FRI',
                    date: '25',
                  ),
                  DaysCard(
                    day: 'SAT',
                    date: '26',
                  ),
                  DaysCard(
                    day: 'SUN',
                    date: '27',
                  ),
                ],
              ),
              SheduledCard(
                categoryColor: Colors.redAccent,
                title: 'Paracetamol',
                categoryTitle: 'Medication',
                numberOfTimes: 3,
                drugNumber: 2,
                dosetaken: 2,
                doseleft: 1,
              ),
              SheduledCard(
                categoryColor: Colors.redAccent,
                title: 'Paracetamol',
                categoryTitle: 'Medication',
                numberOfTimes: 3,
                drugNumber: 2,
                dosetaken: 2,
                doseleft: 1,
              ),
              SheduledCard(
                categoryColor: Colors.redAccent,
                title: 'Paracetamol',
                categoryTitle: 'Medication',
                numberOfTimes: 3,
                drugNumber: 2,
                dosetaken: 2,
                doseleft: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
