import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {

  final _valueController = TextEditingController();
  final _titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}
