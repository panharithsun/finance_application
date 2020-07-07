import 'package:finance_app/const.dart';
import 'package:finance_app/screens/detail/components/bar.dart';
import 'package:finance_app/screens/detail/components/bar_with_date.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TotalBalance extends StatelessWidget {
  const TotalBalance({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 40.0, right: 20.0, left: 20.0),
      // height: size.height * 0.53,
      height: size.height * 0.65,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(20.0),
          bottomLeft: Radius.circular(30.0)
        )
      ),
      child: Column(
        children: <Widget>[
          Bar(),
          SizedBox(height: size.height * 0.03),
          Text(
            'Total Balance',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.white,
            )
          ),
          SizedBox(height: size.height * 0.01),
          Text(
            '\$2396.00',
            style: TextStyle(
              fontSize: 35.0,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            )
          ),
          SizedBox(height: size.height * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'Day',
                style: TextStyle(
                  color: Colors.white,
                  
                )
              ),
              Text(
                'Week',
                style: TextStyle(
                  color: Colors.white,
                  
                )
              ),
              Text(
                'Month',
                style: TextStyle(
                  color: primaryColor,
                  
                )
              ),
              Text(
                'Year',
                style: TextStyle(
                  color: Colors.white,
                )
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 10.0, top: 30.0, right: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                BarWithDate(size: size, leftHeight: 0.07, rightHeight: 0.15, month: 'Dec'),
                BarWithDate(size: size, leftHeight: 0.07, rightHeight: 0.14, month: 'Jan'),
                BarWithDate(size: size, leftHeight: 0.12, rightHeight: 0.14, month: 'Feb'),
                BarWithDate(size: size, leftHeight: 0.04, rightHeight: 0.15, month: 'Mar'),
                BarWithDate(size: size, leftHeight: 0.1, rightHeight: 0.12, month: 'Apr'),
                BarWithDate(size: size, leftHeight: 0.08, rightHeight: 0.138, month: 'Apr'),
              ],
            )
          ),
          Container(
            padding: EdgeInsets.only(top: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      height: 10.0,
                      width: 10.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: primaryColor,
                      ),
                    ),
                    SizedBox(width: size.width * 0.02,),
                    Text(
                      'Expense',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                SizedBox(width: size.width * 0.07),
                Row(
                  children: <Widget>[
                    Container(
                      height: 10.0,
                      width: 10.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.yellow,
                      ),
                    ),
                    SizedBox(width: size.width * 0.02,),
                    Text(
                      'Expense',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
          
        ],
      ),
    );
  }
}

