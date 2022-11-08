import "package:flutter/material.dart";

class LoginMedico extends StatefulWidget {
  @override
  _LoginMedicoState createState() => _LoginMedicoState();
}

class _LoginMedicoState extends State<LoginMedico> {
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
      ),
      body: Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 30,),
              Text("ICLINIC",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  )

              ),
              SizedBox(height: 10,),
              Text("Médico",
                  style: TextStyle(
                    color: Colors.cyan,
                    fontSize: 40,
                    fontWeight: FontWeight.normal,
                  )

              ),
              SizedBox(height: 20,),
              SizedBox(
                  width: 300,
                  child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          hintText: "E-mail",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      )
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
                      )
                  )
              ),
              SizedBox(height: 20,),
              ElevatedButton(
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
                          builder: (context) => LoginMedico()
                      ),
                    );
                  }
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