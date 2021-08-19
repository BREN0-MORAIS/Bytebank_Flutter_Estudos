import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(

  home: Scaffold(
    appBar:AppBar(title: Text('Transferencias'),),
    floatingActionButton:FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: null,
    ),
    body: Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on,
          color:Colors.red ),

        title: Text('100.0'),
        subtitle: Text('1000'),
      ),
      )
    ),



  ),
);




