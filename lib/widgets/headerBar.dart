import 'package:flutter/material.dart';

class HeaderBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Dashboard',
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
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
    );
  }
}
