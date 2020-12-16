import 'package:flutter/material.dart';
import 'package:pre_cure/widgets/headerRow.dart';

import '../constants.dart';

class DrugInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderRow(
                title: 'Drug Info',
                icon: Icons.person,
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(top: 20),
                child: TextField(
                  decoration: kEnbledBorderStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
