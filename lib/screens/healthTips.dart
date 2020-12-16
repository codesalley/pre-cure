import 'package:flutter/material.dart';
import 'package:pre_cure/constants.dart';

class HealthTips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 50),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Text(
                  'Daily Health Tip',
                  style: kHeaderTextStyle.copyWith(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
