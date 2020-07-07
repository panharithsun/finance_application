import 'package:finance_app/screens/home/components/favorite.dart';
import 'package:finance_app/screens/home/components/latest_transactions.dart';
import 'package:finance_app/screens/home/components/popular_categories.dart';
import 'package:finance_app/screens/home/components/top_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            TopBar(size: size),
            Favorite(size: size),
            PopularCategories(size: size),
            LatestTransactions(size: size)
          ],
        )
      )
    );
  }
}

