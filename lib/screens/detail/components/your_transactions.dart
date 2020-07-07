import 'package:finance_app/models/transactions.dart';
import 'package:finance_app/screens/detail/components/transactions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class YourTransactions extends StatelessWidget {
  const YourTransactions({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
      // height: size.height * 0.6,
      height: size.height * 0.7,
      // color: Colors.blue,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Your Transactions',
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
          Transactions(
            size: size, 
            logo: yourTransactions[0].imageUrl,
            name: yourTransactions[0].name,
            date: yourTransactions[0].date,
            price: yourTransactions[0].amount,
          ),
          Transactions(
            size: size, 
            logo: yourTransactions[1].imageUrl,
            name: yourTransactions[1].name,
            date: yourTransactions[1].date,
            price: yourTransactions[1].amount,
          ),
          Transactions(
            size: size, 
            logo: yourTransactions[2].imageUrl,
            name: yourTransactions[2].name,
            date: yourTransactions[2].date,
            price: yourTransactions[2].amount,
          ),
          Transactions(
            size: size, 
            logo: yourTransactions[3].imageUrl,
            name: yourTransactions[3].name,
            date: yourTransactions[3].date,
            price: yourTransactions[3].amount,
          ),
          Transactions(
            size: size, 
            logo: yourTransactions[4].imageUrl,
            name: yourTransactions[4].name,
            date: yourTransactions[4].date,
            price: yourTransactions[4].amount,
          ),
          Transactions(
            size: size, 
            logo: yourTransactions[5].imageUrl,
            name: yourTransactions[5].name,
            date: yourTransactions[5].date,
            price: yourTransactions[5].amount,
          ),
        ],
      )
    );
  }
}

