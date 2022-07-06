import 'package:flutter/material.dart';
import './new_transaction.dart';
import 'transaction_list.dart';
import '../model/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  @override
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'New shoe',
      amount: 49.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'New phone',
      amount: 299.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'New watch',
      amount: 99.99,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
      amount: txAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
      title: txTitle,
    );
    setState(() {
      _userTransactions.add(newTx);
    });
  }

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
