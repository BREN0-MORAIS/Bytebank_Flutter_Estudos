import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
          home: Scaffold(
        appBar: AppBar(
          title: Text('Transferencias'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: null,
        ),
        body: ListaTransferencia(),
      )),
    );

class ListaTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Card(
          child: ListTile(
            leading: Icon(Icons.monetization_on, color: Colors.blue),
            title: Text('100.0'),
            subtitle: Text('1000'),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.monetization_on, color: Colors.blue),
            title: Text('200.0'),
            subtitle: Text('2000'),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.monetization_on, color: Colors.blue),
            title: Text('400.0'),
            subtitle: Text('4000'),
          ),
        ),
      ],
    );
  }
}
