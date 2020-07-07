import 'package:finance_app/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Transactions extends StatelessWidget {

  final String logo, name, date, price;


  const Transactions({
    this.logo,
    this.name,
    this.date,
    this.price,
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.0, top: 5.0),
      padding: EdgeInsets.only(right: 10.0),
      height: 50.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10.0),
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Image(
                  image: AssetImage(logo),
                ),
              ),
              SizedBox(width: size.width * 0.05),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      )
                    ),
                    Text(
                      date,
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 14.0,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Container(
            child: Text(
              '-\$${price}',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              )
            )
          )
        ],
      )
    );
  }
}
