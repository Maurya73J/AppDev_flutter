import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  @override
  final Function addTx;
  final titlecontroller = TextEditingController();
  final amountcontroller = TextEditingController();
  NewTransaction(this.addTx);

  Widget build(BuildContext context) {
    return Card(
      elevation: 15,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titlecontroller,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountcontroller,
            ),
            FlatButton(
              onPressed: () {
                addTx(
                  titlecontroller.text,
                  double.parse(amountcontroller.text),
                );
              },
              child: Text('Add Transaction'),
              textColor: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
