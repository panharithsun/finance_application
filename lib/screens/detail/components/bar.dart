import 'package:finance_app/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bar extends StatelessWidget {
  const Bar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        GestureDetector(
          onTap: () => {
            Navigator.pop(context),
          },
          child: Container(
            width: 20.0,
            child: Image.asset('assets/icons/back.png', color: Colors.white, height: 20.0,),
          ),
        ),
        Container(
          width: 40.0,
          height: 40.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: primaryColor,
          ),
          child: Image.asset('assets/humans/nick.png', fit: BoxFit.fitHeight,),
        )
      ],
    );
  }
}