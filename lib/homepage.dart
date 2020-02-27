import 'package:flutter/material.dart';
import 'package:primeiro_app/addEvento.dart';

// ignore: camel_case_types
class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

// ignore: camel_case_types
class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Gerenciador de Eventos"),
          bottom: TabBar(tabs: <Widget>[
            Tab(
                text: "Lista de eventos",
                icon: Icon(Icons.menu),
            ),
            Tab(
              text: "Calendario",
              icon: Icon(Icons.calendar_today),
            )
          ]),
        ),
        body: TabBarView(
          children: <Widget>[
            _bodyLista(context),
            _bodyCalendario(),
          ],
        ),
      ),
    );
  }

  _bodyLista(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        floatingActionButton: FloatingActionButton.extended(
           onPressed: (){
             _onClickNavegar(context);
          },
          icon: Icon(Icons.add),
          label: Text("Add Evento"),
        ),
      ),
    );
  }

  _bodyCalendario() {
    return Container(color: Colors.green);
  }

  _onClickNavegar(BuildContext context){
    // ignore: missing_return
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return addEvento();
    }));
  }
}
