import 'package:expenses/transactions.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeState extends StatefulWidget {
  const HomeState({super.key});

  @override
  State<HomeState> createState() => _HomeStateState();
}

class _HomeStateState extends State<HomeState> {

  final _valueController = TextEditingController();
  final _titleController = TextEditingController();

  final _transactions = [
    Transactions(
        id: 't1',
        title: 'Novo tênis de corrida',
        value: 310.90,
        date: DateTime.now()),
    Transactions(
        id: 't2', title: 'Conta de luz', value: 310.90, date: DateTime.now())
  ];

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
                Card(color: Colors.blue, child: Text("Gráfico"), elevation: 5),
          ),
          Column(
            children: _transactions.map((tr) {
              return Card(
                child: Row(
                  children: [
                    Container(
                        margin:
                            EdgeInsets.symmetric(
                                horizontal: 15,
                                vertical: 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.purple,
                              width: 2
                          ),
                        ),
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'R\$ ${tr.value.toStringAsFixed(2)}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.purple,
                          ),
                        )
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tr.title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16
                          ),
                        ),
                        Text(
                          DateFormat('d MMM y').format(tr.date),
                          style: TextStyle(fontSize: 16,
                              color: Colors.grey),
                        )
                      ],
                    )
                  ],
                ),
              );
            }).toList(),
          ),
          Card(
            elevation: 5,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  TextField(
                    controller: _titleController,
                    decoration: InputDecoration(
                      labelText: 'Título'
                    ),
                  ),
                  TextField(
                    controller: _valueController,
                    decoration: InputDecoration(
                        labelText: 'Valor (R\$)'
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        child: Text("Nova transação"),
                        style: TextButton.styleFrom(
                          textStyle: TextStyle(
                            color: Colors.purple,
                            fontWeight: FontWeight.bold
                          )
                        ),
                        onPressed: (){
                          print(_titleController.text);
                          print(_valueController.text);
                        },
                      )
                    ],
                  )
                ],
              )
            ),
          )
        ],
      ),
    );
  }
}
