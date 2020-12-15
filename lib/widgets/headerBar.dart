import 'package:flutter/material.dart';

class HeaderBar extends StatelessWidget {
  const HeaderBar({
    Key key,
  }) : super(key: key);

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
