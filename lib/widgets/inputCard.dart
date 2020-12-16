import 'package:flutter/material.dart';

import '../constants.dart';

class InputCard extends StatelessWidget {
  const InputCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: TextField(
        decoration: InputDecoration(
          labelText: 'NAME',
          labelStyle: TextStyle(
            color: kInputBorder,
            fontSize: 20,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: kInputBorder.withOpacity(0.5),
              width: 2,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: kInputBorder.withOpacity(0.5),
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
