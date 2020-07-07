import 'package:finance_app/const.dart';
import 'package:finance_app/models/categories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopularCategories extends StatelessWidget {
  const PopularCategories({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      // height: size.height * 0.17,
      height: size.height * 0.2,
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Popular Categories',
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
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (BuildContext context, int index) {
                Category category = categories[index];
                return GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    margin: EdgeInsets.only(right: 20.0, top: 5.0),
                    width: 180.0,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(15.0),
                          height: 60.0,
                          width: 60.0,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(20.0)
                          ),
                          child: Image(
                            image: AssetImage(category.imageUrl),
                          )
                        ),
                        SizedBox(width: size.width * 0.03),
                        Text(
                          category.name,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 16.0,
                          )
                        )
                      ],
                    )
                  ),
                );
              },
            ),
          )
        ],
      )
    );
  }
}