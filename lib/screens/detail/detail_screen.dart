import 'package:finance_app/screens/detail/components/this_month.dart';
import 'package:finance_app/screens/detail/components/total_balance.dart';
import 'package:finance_app/screens/detail/components/your_transactions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Detail extends StatefulWidget {

  Detail();

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {

  int selectedIndex = 2;
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            TotalBalance(size: size),
            ThisMonth(size: size),
            YourTransactions(size: size)
          ]
        ),
      )
    );
  }
}

