import 'package:finance_app/const.dart';
import 'package:finance_app/screens/detail/detail_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:<Widget>[
        Container(
          // height: size.height * 0.3,
          height: size.height * 0.35,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20.0),
              bottomLeft: Radius.circular(30.0)
            )
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(right: 40.0),
                    width: 70.0,
                    child: Image.asset('assets/icons/menu.png', color: Colors.white),
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
              ),
              SizedBox(height: 30.0),
              Container(
                margin: EdgeInsets.only(right: 295.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'My Card',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      )
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      height: 55.0,
                      width: 55.0,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      child: Icon(
                        Icons.add,
                        size: 30.0,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Detail()),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
            margin: EdgeInsets.only(top: size.height * 0.18, left: size.width * 0.3),
            // height: size.height * 0.24,
            width: size.width * 0.7,
            decoration: BoxDecoration(
              color: primaryColor,
              image: DecorationImage(
                image: AssetImage('assets/icons/background.png'),
                fit: BoxFit.fitHeight
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.8),
                  offset: Offset(0, 3),
                  blurRadius: 4,
                  
                )
              ]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      height: 30.0,
                      child: Image.asset('assets/icons/mastercard.png')
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      'MasterCard',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      )
                    )
                  ],
                ),
                SizedBox(height: size.height * 0.04),
                Text(
                  'Nick Jones',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.0,
                  )
                ),
                SizedBox(height: 10.0),
                Text(
                  '1018 **** **** 4390',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  )
                ),
                SizedBox(height: size.height * 0.03),
                Text(
                  '05 / 23',
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            )
          ),
        )
      ],
    );
  }
}