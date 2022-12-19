import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utils/constants.dart';
import '../screens/home/home.dart';
import '../screens/home/calendario.dart';
import '../screens/home/pesquisa.dart';
import '../screens/home/perfil_cliente.dart';

class NavigatorController extends StatefulWidget {
  const NavigatorController({Key? key}) : super(key: key);

  @override
  _NavigatorControllerState createState() => _NavigatorControllerState();
}

class _NavigatorControllerState extends State<NavigatorController> {
  int _indiceAtual = 0;

  final List<Widget> _telas = [
    HomeScreen(),
    PesquisaScreen(),
    CalendarioScreen(),
    PerfilScreen()
  ];

  void _onTap(int index) {
    setState(() {
      _indiceAtual = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: _telas[_indiceAtual],

      bottomNavigationBar: Container (
        decoration: BoxDecoration (
          borderRadius: BorderRadius.only (
              topRight: Radius.circular(30), topLeft: Radius.circular(30)
          ),
          boxShadow: [
            BoxShadow(color: kPrimaryColor, spreadRadius: -22, blurRadius: 40),
          ],
        ),

        child: ClipRRect (
          borderRadius: const BorderRadius.only (
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),

          child: BottomNavigationBar(
            currentIndex: _indiceAtual,
            unselectedItemColor: lightColor,
            selectedItemColor: kSecondaryColor,
            onTap: _onTap,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home", backgroundColor: kBackgroundColor),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: "Pesquisar", backgroundColor: kBackgroundColor),
              BottomNavigationBarItem(icon: Icon(Icons.event), label: "Calendário", backgroundColor:kBackgroundColor),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: "Perfil", backgroundColor: kBackgroundColor),
            ],
          ),
        ),
      ),

    );
  }
}