import 'package:flutter/material.dart';
import 'package:pre_cure/constants.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({Key key, this.color, this.icon, this.name, this.count})
      : super(key: key);

  final Color color;
  final String name;
  final IconData icon;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Card(
            elevation: 1,
            shadowColor: KmainColor,
            child: Container(
              height: 90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      color: KmainColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: 50,
                    height: 50,
                    child: Icon(
                      icon,
                      size: 30,
                      color: color,
                    ),
                  ),
                  title: Text(
                    name,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing: Text(
                    count == null ? '0' : '$count',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
