import 'package:flutter/material.dart';

import '../constants.dart';

class AddBottom extends StatelessWidget {
  const AddBottom({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.redAccent,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.add,
            color: Colors.white,
            size: 25,
          ),
          Text(
            'Add Drug',
            style: kaddBottomTextstyle,
          ),
        ],
      ),
    );
  }
}
