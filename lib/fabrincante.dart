import 'package:flutter_app_dropdown_example/dropdown.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Fabrincante extends DropDownItem {
  int id;
  String nome;

  Fabrincante.fromJson(Map<String, dynamic> json) :
    id = json["id"] as int,
    nome = json["fabrincante"];

  @override
  String toString() {
    return "Fabrincante{id: $id, fabrincante: $nome}";
  }

  @override
  String text() {
    return this.nome;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Fabrincante &&
              runtimeType == other.runtimeType &&
              nome == other.nome;

  @override
  int get hashCode => nome.hashCode;

}

class FabrincanteService {

  static Future<List<Fabrincante>> getFabrincante() async {

    String url = "http://www.mocky.io/v2/5e8b2c432d0000271a1a4cfb";

    final response = await http.get(url);
    final json = response.body;
    final map = convert.json.decode(json);

    List<Fabrincante> fabricantes = map.map<Fabrincante>((json) => Fabrincante.fromJson(json)).toList();

    return fabricantes;
  }

}