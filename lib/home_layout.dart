import 'package:expenses/components/transaction_form.dart';
import 'package:expenses/components/transaction_list.dart';
import 'package:expenses/components/transaction_user.dart';
import 'package:flutter/material.dart';


class HomeState extends StatefulWidget {
  const HomeState({super.key});

  @override
  State<HomeState> createState() => _HomeStateState();
}

class _HomeStateState extends State<HomeState> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Despesas pessoais"), backgroundColor: Colors.lightBlue),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child:
                Card(
                    color: Colors.blue,
                    child: Text("Gráfico"),
                    elevation: 5
                ),
          ),
          TransactionUser(),
        ],
      ),
    );
  }
}
