import 'package:flutter/material.dart';
import '../models/transactions.dart';
import 'transaction_list.dart';
import 'transaction_form.dart';

class TransactionUser extends StatefulWidget {

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {

  final _transactions = [
    Transactions(
        id: 't1',
        title: 'Novo tênis de corrida',
        value: 310.90,
        date: DateTime.now()
    ),
    Transactions(
        id: 't2',
        title: 'Conta de luz',
        value: 310.90,
        date: DateTime.now()
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionList(_transactions),
        TransactionForm()
      ],
    );
  }
}
