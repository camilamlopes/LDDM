import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'signup_screen.dart';
import '../../utils/constants.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {

  Widget mainButtom () {
    return Padding(
      padding: const EdgeInsets.only(right: 40, left: 40),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LoginScreen()
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 20),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          backgroundColor: kSecondaryColor,
        ),
        child: const Text(
          'Acessar Conta',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget textButtom () {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Não possui uma conta?',
            style: const TextStyle (
              fontSize: 15,
              fontFamily: 'Montserrat',
              color: mediumColor,
            ),
          ),

          TextButton(
            onPressed: () {
              Navigator.push (
                context,
                MaterialPageRoute(
                    builder: (context) => SignupScreen()
                ),
              );
            },
            child: Text(
              'Sign Up',
              style: const TextStyle(
                fontSize: 15,
                fontFamily: 'Montserrat',
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Padding (
            padding: EdgeInsets.only(top: 100, left: 20, right: 20),
            child: Column (
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text (
                  'Bem-Vindo',
                  style: const TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                Text (
                  'Melhor aplicativo para encontrar médicos perto de você',
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Image.asset ('assets/images/Stethoscope.png',
              ),
            ],
          ),

          Align (
            alignment: Alignment.bottomCenter,
            child: Stack (
              children: [
                Padding (
                  padding: EdgeInsets.only(bottom: 50),
                  child: Column (
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      mainButtom(),
                      textButtom()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}