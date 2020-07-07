import 'package:dotted_border/dotted_border.dart';
import 'package:finance_app/const.dart';
import 'package:finance_app/screens/home/components/favorite_people.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Favorite extends StatelessWidget {
  const Favorite({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      // height: size.height * 0.16,
  
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Favorites',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
            )
          ),
          SizedBox(height: size.height * 0.02),
          Row(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  FavoritePeople(size: size, imgUrl: 'assets/humans/emily.png', margin: 0.55),
                  FavoritePeople(size: size, imgUrl: 'assets/humans/greg.png', margin: 0.44),
                  FavoritePeople(size: size, imgUrl: 'assets/humans/jess.png', margin: 0.34),
                  FavoritePeople(size: size, imgUrl: 'assets/humans/john.png', margin: 0.24),
                  FavoritePeople(size: size, imgUrl: 'assets/humans/andrew.png', margin: 0.13),
                  GestureDetector(
                    onTap: () {},
                    child: DottedBorder(
                      borderType: BorderType.RRect,
                      radius: Radius.circular(20.0),
                      color: Colors.black,
                      padding: EdgeInsets.all(0.0),
                      strokeWidth: 1,
                      child: Container(
                        height: 50.0,
                        width: 50.0,
                        child: Icon(
                          Icons.add,
                          size: size.height * 0.03,
                        )
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      )
    );
  }
}

