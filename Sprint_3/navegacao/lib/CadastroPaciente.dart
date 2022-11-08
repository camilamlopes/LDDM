import "package:flutter/material.dart";
//import 'package:shared_preferences/shared_preferences.dart';

class CadastroPaciente extends StatefulWidget {
  @override
  _CadastroPacienteState createState() => _CadastroPacienteState();
}

class _CadastroPacienteState extends State<CadastroPaciente> {
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
      ),
      body: Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20,),
              SizedBox(
                height: 130,
                child: Text("Novo Paciente",
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    )

                ),
              ),
              SizedBox(
                  width: 300,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: "Nome de usuário",
                        hintStyle: TextStyle(color: Colors.indigo),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.indigo.withOpacity(0.5),
                            )
                        ),
                    ),
                  )
              ),
              SizedBox(height: 20,),
              SizedBox(
                  width: 300,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: "E-mail",
                        hintStyle: TextStyle(color: Colors.indigo),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.indigo.withOpacity(0.5),
                            )
                        ),
                    ),
                  )
              ),
              SizedBox(height: 20,),
              SizedBox(
                  height: 60,
                  width: 300,
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        hintText: "Senha",
                        hintStyle: TextStyle(color: Colors.indigo),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.indigo.withOpacity(0.5),
                            )
                        ),
                    ),
                  )
              ),
              SizedBox(height: 20,),
              SizedBox(
                  width: 300,
                  child: TextField(
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                        hintText: "Data de Nascimento",
                        hintStyle: TextStyle(color: Colors.indigo),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.indigo.withOpacity(0.5),
                            )
                        ),
                    ),
                  )
              ),
              SizedBox(height: 20,),
              SizedBox(
                  width: 300,
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        hintText: "Telefone",
                        hintStyle: TextStyle(color: Colors.indigo),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.indigo.withOpacity(0.5),
                            )
                        ),
                    ),
                  )
              ),
              SizedBox(height: 20,),
              SizedBox(
                width: 300,
                /*child: CheckboxListTile(
                  title: Text("UNIMED"),
                  secondary: Icon(Icons.add_box),
                  //value: _unimed,
                  onChanged: (bool valor) {
                    setState(() {
                      //_unimed = valor;
                    });
                  }
                )*/
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: () => print("Escolheu Login Médico"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo,
                    minimumSize: Size(300, 60),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                  child: Text(
                      "CADASTRO"
                  )
              )
            ],
          )
      ),
    );
  }
}