// ignore_for_file: prefer_const_constructors
import 'dart:convert';

import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:http/http.dart' as http;

class Cep extends StatefulWidget {
  const Cep({super.key});

  @override
  State<Cep> createState() => _CepState();
}

class _CepState extends State<Cep> {
  String resultado = "Seu cep irá aparecer aqui";

  TextEditingController txtcep = TextEditingController();

  void buscaCep() async {
    String cep = txtcep.text;

    String url = "https://viacep.com.br/ws/$cep/json/";
    var uri = Uri.parse(url);

    http.Response response;

    response = await http.get(uri);

    print("Resposta" + response.body);
    print("StatusCode: " + response.statusCode.toString());

    Map<String, dynamic> dados = json.decode(response.body);

    String logradouro = dados["logradouro"];
    String complemento = dados["complemento"];
    String bairro = dados["bairro"];
    String localidade = dados["localidade"];

    String endereco =
        " O Endereço é:  + $logradouro, $complemento, $bairro, $localidade";
    setState(() {
      resultado = endereco;
    });
  } //end buscaCep()

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consulmo de API"),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        padding: EdgeInsets.all(60),
        child: Center(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              TextField(
                controller: txtcep,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: "Digite o cep: "),
                style: TextStyle(fontSize: 16, color: Colors.lightBlueAccent),
              ),
              ElevatedButton(
                onPressed: buscaCep,
                child: Text("Consultar"),
              ),
              Text(resultado),
            ],
          ),
        ),
      ),
    );
  }
}
