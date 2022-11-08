import "package:flutter/material.dart";
//import 'package:shared_preferences/shared_preferences.dart';
import "LoginPaciente.dart";
import "CadastroPaciente.dart";

class Login extends StatelessWidget {

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(

            ),

          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Padding(
                    padding: EdgeInsets.only(top: 60),
                    child: Column(
                      children: [
                        Text("ICLINIC",
                            style: TextStyle(
                              color: Colors.indigo,
                              fontSize: 60,
                              fontWeight: FontWeight.bold
                            )
                        ),

                        Text("Lorem ipsum dolor sit amet",
                            style: TextStyle(
                              color: Colors.indigo,
                              fontSize: 20,
                              fontStyle: FontStyle.italic
                            )
                        ),
                      ],
                    )
                )
              ),
              SizedBox(height: 50,),
              Container(
                child: Column(
                  children: [
                    Container(
                      height: 200,
                      width: double.infinity,
                      padding: const EdgeInsets.only(left: 50, right: 50),

                      child: Column(
                        children: [
                          SizedBox(
                              width: 300,
                              child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    hintText: "E-mail",
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10)
                                    )
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
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10)
                                    )
                                ),
                              )
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30,),
                    Container(
                        height: 60,
                        width: double.infinity,

                        padding: const EdgeInsets.only(left: 80, right: 80),

                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.lightBlueAccent,
                              minimumSize: Size(300, 60),
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                              ),
                            ),
                            child: Text(
                                "LOGIN"
                            ),
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPaciente()
                                ),
                              );
                            }
                        ),
                    ),
                    Container(
                        height: 60,
                        width: double.infinity,
                        padding: const EdgeInsets.only(left: 80, right: 80),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.indigo,
                              minimumSize: Size(300, 60),
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                              ),
                            ),
                            child: Text(
                                "CADASTRO"
                            ),
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CadastroPaciente()
                                ),
                              );
                            }
                        )
                    )
                  ],
                )
              ),
            ],
          )
        ]
      ),
    );
  }
}