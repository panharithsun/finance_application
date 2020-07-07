import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoritePeople extends StatelessWidget {

  final String imgUrl;
  final double margin;

  const FavoritePeople({
    this.imgUrl,
    this.margin,
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: size.width * margin),
      height: 53.0,
      width: 53.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          color: Colors.black,
        ),
        color: Colors.white,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image(
          image: AssetImage(
            imgUrl,
          ),
          fit: BoxFit.cover,
        ),
      )
    );
  }
}

