import 'package:finance_app/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BarWithDate extends StatelessWidget {

  final double leftHeight, rightHeight;
  final String month;

  const BarWithDate({
    this.leftHeight,
    this.rightHeight,
    this.month,
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Container(
              height: size.height * leftHeight,
              width: 8.0,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            SizedBox(width: 3.0),
            Container(
              height: size.height * rightHeight,
              width: 8.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
              ),
            )
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 4.0),
          child: Text(
            month,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.0,
            ),
          )
        )
      ],
    );
  }
}