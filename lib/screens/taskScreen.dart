import 'package:flutter/material.dart';
import 'package:pre_cure/constants.dart';
import 'package:pre_cure/widgets/addBottom.dart';
import 'package:pre_cure/widgets/headerRow.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
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
                    mainAxisAlignment: MainAxisAlignment.start,
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
                  AddBottom(),
                ],
              ),
              Row(
                children: [],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
