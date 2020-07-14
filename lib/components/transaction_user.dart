import 'dart:math';
import 'package:expenses/components/transaction_form.dart';
import 'package:expenses/components/transaction_list.dart';
import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

class TransactionUser extends StatefulWidget {
  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {

  final _transactions = [
    Transaction(
      id: 'T1',
      title: 'Xiaomi Mi8',
      value: 123.32,
      date: DateTime.now()
    ),
    Transaction(
      id: 'T2',
      title: 'Moto G5',
      value: 99,
      date: DateTime.now()
    ),
    Transaction(
      id: 'T3',
      title: 'Samsung Galaxy 8',
      value: 350.32,
      date: DateTime.now()
    ),
    Transaction(
      id: 'T4',
      title: 'iPhone 11',
      value: 5025.23,
      date: DateTime.now()
    ),
    Transaction(
      id: 'T5',
      title: 'LG K10',
      value: 50.12,
      date: DateTime.now()
    ),
    Transaction(
      id: 'T6',
      title: 'iPad 3',
      value: 50.12,
      date: DateTime.now()
    ),
    Transaction(
      id: 'T7',
      title: 'MacBook Pro',
      value: 15550.99,
      date: DateTime.now()
    ),
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionForm(_addTransaction),
        TransactionList(_transactions),
      ],
    );
  }
}