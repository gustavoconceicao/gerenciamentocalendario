import 'package:flutter/material.dart';

class addEvento extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Adicionar Evento"),
      ),
      body: _body(),
    );
  }

  _body() {
    return ListView(
      children: <Widget>[
        Text("Nome do Evento"),
        TextFormField(),
        Container(
          height: 30,
          child: RaisedButton(
            onPressed: null,
            child: Column(
              children: <Widget>[
                Text ("Horario?"),
                Icon(Icons.query_builder),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
