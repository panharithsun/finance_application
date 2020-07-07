import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MoneyBar extends StatelessWidget {

  final Color color;
  final String name, money;

  const MoneyBar({
    this.color,
    this.name,
    this.money,
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      // height: size.height * 0.1,
      height: size.height * 0.12,
      width: size.width * 0.87,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[300],
            offset: Offset(0, 2),
            blurRadius: 3,
          )
        ]
      ),
      child: Row(
        children: <Widget>[
          Container(
            height: 45.0,
            width: 45.0,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Icon(
              Icons.arrow_upward,
              color: Colors.white,
            ),
          ),
          SizedBox(width: size.width * 0.04,),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 15.0,
                  )
                ),
                Text(
                  '\$${money}',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

