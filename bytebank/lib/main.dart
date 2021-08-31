import 'package:flutter/material.dart';

void main() => runApp(ByteBankApp());

class ByteBankApp extends StatelessWidget {
  const ByteBankApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListaTransferencia(),
      ),
    );
  }
}

class FormularioTransferencia extends StatelessWidget {
  final TextEditingController _controladorCampoNumeroConta =
      TextEditingController();

  final TextEditingController _controladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criando Transferência'),
      ),
      body: Column(
        children: [
          Editor(Icons.monetization_on,_controladorCampoNumeroConta, rotulo:  'Número da Conta',dica:  '0000'),
          Editor(Icons.monetization_on, _controladorCampoNumeroConta, rotulo: 'Valor', dica: '0.00'),
          RaisedButton(
              child: Text('Confirmar'),
              onPressed: () {
                final int numeroConta =
                    int.parse(_controladorCampoNumeroConta.text);
                final double valor = double.parse(_controladorCampoValor.text);
                if (numeroConta != null && valor != null) {
                  Transferencia(valor, numeroConta);
                  @override
                  String toString() {
                    return 'FormularioTransferencia{_controladorCampoNumeroConta: $_controladorCampoNumeroConta, _controladorCampoValor: $_controladorCampoValor}';
                  }

                  print(toString());
                }
              }),
        ],
      ),
    );
  }
}

class ListaTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Transferencias'),
      ),
      body: Column(
        children: <Widget>[
          ItemTransferencua(Transferencia(100.0, 1000)),
          ItemTransferencua(Transferencia(200.0, 1000)),
          ItemTransferencua(Transferencia(300.0, 1000)),
          ItemTransferencua(Transferencia(400.0, 1000)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FormularioTransferencia();
          }));
        },
      ),
    );
  }
}

class ItemTransferencua extends StatelessWidget {
  final Transferencia _transferencia;

  ItemTransferencua(this._transferencia);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on, color: Colors.blue),
        title: Text(this._transferencia.valor.toString()),
        subtitle: Text(this._transferencia.numeroConta.toString()),
      ),
    );
  }
}

class Transferencia {
  final double valor;
  final int numeroConta;

  Transferencia(this.valor, this.numeroConta);
}

class Editor extends StatelessWidget {
  final TextEditingController controlador;
  final String rotulo;
  final String dica;
  final IconData icone;

  Editor(this.icone ,  this.controlador , {this.rotulo = "",  this.dica = ""});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: controlador,
        style: TextStyle(
          fontSize: 24.0,
        ),
        decoration: InputDecoration(
          labelText: rotulo,
          icon: Icon(icone),
          hintText: dica,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
