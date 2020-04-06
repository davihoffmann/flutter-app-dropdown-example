import 'package:flutter/material.dart';
import 'package:flutter_app_dropdown_example/dropdown.dart';
import 'package:flutter_app_dropdown_example/fabrincante.dart';

class DropdownExemaple3 extends StatefulWidget {
  @override
  _DropdownExemaple3State createState() => _DropdownExemaple3State();
}

class _DropdownExemaple3State extends State<DropdownExemaple3> {
  Fabrincante fabrincante;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exemplo 3"),
      ),
      body: _body(),
    );
  }

  _body() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          FutureBuilder<List<Fabrincante>>(
            initialData: [],
            future: FabrincanteService.getFabrincante(),
            builder: (builder, snapshot) {
              
              List<Fabrincante> lista = snapshot.data;
             
              

              return DropDown<Fabrincante>(lista, "Fabricantes", fabrincante, _onFabricanteChange);
            },
          ),
          Text(
            fabrincante != null ? "Fabricante > ${fabrincante.nome}" : "",
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }

  void _onFabricanteChange(Fabrincante fabrincante) {
    print("> ${fabrincante}");

    setState(() {
      this.fabrincante = fabrincante;
    });
  }
}
