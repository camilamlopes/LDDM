import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Perfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.only(top:30,left:15),
                  child:ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(0, 27, 72, 28),
                        minimumSize: Size(100, 40),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                      ),
                      child: Icon (
                        Ionicons.chevron_back,
                        color: Colors.white,
                      ),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            //builder: (context) => CadastroPaciente()
                          ),
                        );
                      }
                  )
              ),
              Container(
                  alignment: Alignment.topCenter,
                  margin: const EdgeInsets.only(top:90,left: 15),
                  height: 120,
                  width : 120,
                  child: Center(
                      child:Image.network("https://i1.sndcdn.com/artworks-FRIqYPtESjPf6jwJ-mEXsUg-t500x500.jpg"),
                  )
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:<Widget>[
                    Container(
                      padding:EdgeInsets.only(top: 90,left:150),
                      child: Text("ENDOCRINOLOGIA",
                          style:TextStyle(
                            color: Color.fromRGBO(1, 138, 190, 75),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )
                      ),
                    ),
                    Container(
                      padding:EdgeInsets.only(top:10,left:150),
                      child: Text("Nome",
                          style:TextStyle(
                            color: Color.fromRGBO(2, 69, 122, 48),
                            fontSize: 30,
                            fontWeight: FontWeight.normal,
                          )
                      ),
                    ),
                    Container(padding:EdgeInsets.only(left:150),
                      child: Text("Sobrenome",
                          style:TextStyle(
                            color: Color.fromRGBO(2, 69, 122, 48),
                            fontSize: 30,
                            fontWeight: FontWeight.normal,
                          )
                      ),
                    ),
                    Container(padding:EdgeInsets.only(left:150),
                      child: Text("CRM XXXXXXX-XX",
                          style: TextStyle(
                            color: Color.fromRGBO(1, 138, 190, 75),
                            fontSize:15,
                            fontWeight: FontWeight.normal,
                          )
                      ),
                    )
                  ]
              ),
              Container(
                color: Color.fromRGBO(0, 27, 72, 28),
                width: double.infinity,
                height: 500,
                alignment: Alignment.center,
                  margin: const EdgeInsets.only(top:250),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top:275,left:15),
                    child: Text("Especialidade:",
                      style: TextStyle(
                        color: Color.fromRGBO(214, 232, 238,93),
                        fontSize:15,
                      ),
                    )
                  ),
                  Container(
                      color: Colors.white,
                      width: 350,
                      height: 30,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(top:0,left: 15,right: 15),
                      child: Text("Ipsum lorem sic transit gloria mundi",
                        style: TextStyle(
                          color: Color.fromRGBO(2, 69, 122, 48),
                          fontSize:15,
                        ),
                      )
                  )
                ]
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.only(top:350,left:15),
                        child: Text("Local de atendimento:",
                          style: TextStyle(
                            color: Color.fromRGBO(214, 232, 238,93),
                            fontSize:15,
                          ),
                        )
                    ),
                    Container(
                        color: Colors.white,
                        width: 350,
                        height: 30,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(top:0,left: 15,right: 15),
                        child: Text("Rua Ednaldo Pereira,152, sala 202, Peixuca",
                          style: TextStyle(
                            color: Color.fromRGBO(2, 69, 122, 48),
                            fontSize:15,
                          ),
                        )
                    )
                  ]
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.only(top:425,left:15),
                        child: Text("Cidade:",
                          style: TextStyle(
                            color: Color.fromRGBO(214, 232, 238,93),
                            fontSize:15,
                          ),
                        )
                    ),
                    Container(
                        color: Colors.white,
                        width: 350,
                        height: 30,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(top:0,left: 15,right: 200),
                        child: Text("Londrina",
                          style: TextStyle(
                            color: Color.fromRGBO(2, 69, 122, 48),
                            fontSize:15,
                          ),
                        )
                    ),
                  ]
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.only(top:425,left:200),
                        child: Text("Estado:",
                          style: TextStyle(
                            color: Color.fromRGBO(214, 232, 238,93),
                            fontSize:15,
                          ),
                        )
                    ),
                    Container(
                        color: Colors.white,
                        width: 350,
                        height: 30,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(top:0,right: 15,left: 200),
                        child: Text("PR",
                          style: TextStyle(
                            color: Color.fromRGBO(2, 69, 122, 48),
                            fontSize:15,
                          ),
                        )
                    )
                  ]
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.only(top:500,left:15),
                        child: Text("Avaliações:",
                          style: TextStyle(
                            color: Color.fromRGBO(214, 232, 238,93),
                            fontSize:15,
                          ),
                        )
                    ),
                  ]
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.only(top:525,left:15),
                        child: Icon(
                          Ionicons.star,
                              color: Colors.amberAccent,
                        ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top:525,left:5),
                      child: Icon(
                        Ionicons.star,
                        color: Colors.amberAccent,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top:525,left:5),
                      child: Icon(
                        Ionicons.star,
                        color: Colors.amberAccent,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top:525,left:5),
                      child: Icon(
                        Ionicons.star,
                        color: Colors.amberAccent,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top:525,left:5),
                      child: Icon(
                        Ionicons.star,
                        color: Colors.amberAccent,
                      ),
                    ),
                  ]
              ),
              Container(
                  padding: EdgeInsets.only(top:600,left:30),
                child:ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo,
                      minimumSize: Size(300, 60),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                    ),
                    child: Text(
                        "AGENDA"
                    ),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          //builder: (context) => CadastroPaciente()
                        ),
                      );
                    }
                )
              )

            ],)
    );
  }
}