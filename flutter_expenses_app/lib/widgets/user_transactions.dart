import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transaction_list.dart';
import './../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 120,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'New Clothes',
      amount: 400.50,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String title, double amount) {
    final transaction = Transaction(
      id: null,
      title: title,
      amount: amount,
      date: DateTime.now(),
    );
    setState(() {
      _userTransactions.add(transaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
