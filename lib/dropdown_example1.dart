import 'package:flutter/material.dart';
import 'package:flutter_app_dropdown_example/dropdown_string.dart';

class DropdownExemaple1 extends StatefulWidget {
  @override
  _DropdownExemaple1State createState() => _DropdownExemaple1State();
}

class _DropdownExemaple1State extends State<DropdownExemaple1> {
  Color color = Colors.black;
  String nomeCor;

  final items = [
    "Azul",
    "Amarelo",
    "Verde",
    "Vermelho",
    "Preto",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exemplo 1"),
      ),
      body: _body(),
    );
  }

  _body() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          DropDownString(items, "Cores", nomeCor, _onCorChange),
          Text(
            "Cor > $nomeCor",
            style: TextStyle(color: color, fontSize: 30),
          )
        ],
      ),
    );
  }

  void _onCorChange(String value) {
    print("> $value");

    setState(() {
      nomeCor = value;
      if ("Azul" == value) {
        color = Colors.blue;
      } else if ("Amarelo" == value) {
        color = Colors.yellow;
      } else if ("Verde" == value) {
        color = Colors.green;
      }else if ("Vermelho" == value) {
        color = Colors.red;
      }else if ("Preto" == value) {
        color = Colors.black;
      }
    });
  }
}
