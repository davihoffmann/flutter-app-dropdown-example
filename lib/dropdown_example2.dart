import 'package:flutter/material.dart';
import 'package:flutter_app_dropdown_example/dropdown.dart';

class DropdownExemaple2 extends StatefulWidget {
  @override
  _DropdownExemaple2State createState() => _DropdownExemaple2State();
}

class _DropdownExemaple2State extends State<DropdownExemaple2> {
  
  Cor cor = Cor("Preto", Colors.black);

  static final items = [
    Cor("Azul", Colors.blue),
    Cor("Amarelo", Colors.yellow),
    Cor("Verde", Colors.green),
    Cor("Vermelho", Colors.red),
    Cor("Preto", Colors.black)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exemplo 2"),
      ),
      body: _body(),
    );
  }

  _body() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          DropDown<Cor>(items, "Cores", cor, _onCorChange),
          Text(
            cor != null ? "Cor > ${cor.nome}" : "",
            style: TextStyle(color: cor.color, fontSize: 30),
          )
        ],
      ),
    );
  }

  void _onCorChange(Cor cor) {
    print("> ${cor.nome}");

    setState(() {
      this.cor = cor;
    });
  }
}

class Cor extends DropDownItem {
  Color color;
  String nome;

  Cor(this.nome, this.color);

  @override
  String text() {
    return nome;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Cor &&
              runtimeType == other.runtimeType &&
              nome == other.nome;

  @override
  int get hashCode => nome.hashCode;
}
