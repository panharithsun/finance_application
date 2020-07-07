class Transaction {
  String name;
  String date;
  String imageUrl;
  String amount;

  Transaction({
    this.name,
    this.date,
    this.imageUrl,
    this.amount
  });
}

List<Transaction> latestTransactions = [
  Transaction(
    name: 'Amazon',
    date: 'May 23, 2020',
    imageUrl: 'assets/icons/amazon.png',
    amount: '43.00',
  ),
  Transaction(
    name: 'App Store',
    date: 'May 21, 2020',
    imageUrl: 'assets/icons/app.png',
    amount: '9.99',
  ),
];

List<Transaction> yourTransactions = [
  Transaction(
    name: 'Amazon',
    date: 'May 23, 2020',
    imageUrl: 'assets/icons/amazon.png',
    amount: '43.00',
  ),
  Transaction(
    name: 'App Store',
    date: 'May 21, 2020',
    imageUrl: 'assets/icons/app.png',
    amount: '9.99',
  ),
  Transaction(
    name: 'McDonald\'s',
    date: 'May 17, 2020',
    imageUrl: 'assets/icons/mcdonalds.png',
    amount: '23.45',
  ),
  Transaction(
    name: 'Ebay',
    date: 'May 10, 2020',
    imageUrl: 'assets/icons/ebay.png',
    amount: '87.00',
  ),
  Transaction(
    name: 'HP',
    date: 'May 8, 2020',
    imageUrl: 'assets/icons/hp.png',
    amount: '911.00',
  ),
  Transaction(
    name: 'Play Store',
    date: 'April 23, 2020',
    imageUrl: 'assets/icons/playstore.png',
    amount: '3.49',
  )
];