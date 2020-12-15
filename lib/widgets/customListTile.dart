import 'package:flutter/material.dart';
import 'package:pre_cure/constants.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key key,
  }) : super(key: key);

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
                      Icons.folder_open_rounded,
                      size: 30,
                    ),
                  ),
                  title: Text(
                    'Total perception',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing: Text(
                    '23',
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
