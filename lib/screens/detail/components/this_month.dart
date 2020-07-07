import 'package:finance_app/const.dart';
import 'package:finance_app/screens/detail/components/money_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThisMonth extends StatelessWidget {
  const ThisMonth({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
      // height: size.height * 0.32,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'This Month',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                )
              ),
              IconButton(
                icon: Icon(
                  Icons.more_horiz,
                  size: 30.0,
                ),
                onPressed: () {},
              )
            ],
          ),
          MoneyBar(size: size, color: primaryColor, name: 'Expense', money: '786.00',),
          SizedBox(height: size.height * 0.03),
          MoneyBar(size: size, color: Colors.white, name: 'Income', money: '1383.00',)
        ],
      ),
    );
  }
}
