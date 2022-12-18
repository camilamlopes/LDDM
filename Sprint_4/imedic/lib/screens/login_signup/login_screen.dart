import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import 'components/top_text.dart';
import 'components/bottom_text.dart';
import '../home/home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {

  Widget inputField (String hint) {
    return Padding(
      padding: const EdgeInsets.only(right: 30, left: 30, top: 10),
      child: SizedBox(
        height: 45,
        child: TextField (
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
            border:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: lightBlockColor,
            hintText: hint,
          ),
        ),
      ),
    );
  }

  Widget mainButtom (String title) {
    return Padding(
      padding: const EdgeInsets.only(right: 30, left: 30, bottom: 10),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => HomeScreen()
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 15),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          backgroundColor: kSecondaryColor,
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget divider () {
    return Padding (
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      child: Row (
        children: [
          Flexible (
            child: Container (
              height: 1,
              color: kPrimaryColor,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'or',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Flexible (
            child: Container (
              height: 1,
              color: kPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget logos () {
    return Padding (
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row (
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack (
            alignment: Alignment.center,
            children: [
              Container (
                width: 45,
                height: 45,

                decoration: const BoxDecoration (
                  borderRadius: BorderRadius.all(Radius.circular(13)),
                  color: lightBlockColor,
                ),

              ),
              Image.asset('assets/images/facebook-logo.png',
                width: 32,
                height: 32,
              ),
            ],
          ),

          const SizedBox(width: 25),

          Stack (
            alignment: Alignment.center,
            children: [
              Container (
                width: 45,
                height: 45,

                decoration: const BoxDecoration (
                  borderRadius: BorderRadius.all(Radius.circular(13)),
                  color: lightBlockColor,
                ),

              ),
              Image.asset('assets/images/Google.png',
                width: 32,
                height: 32,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget forgotPassword () {
    return Align (
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: TextButton (
          onPressed: () {},
          child: const Text (
            'Esqueceu a senha?',
            style: TextStyle (
              fontSize: 10,
              fontWeight: FontWeight.w600,
              color: kSecondaryColor,
            ),
          ),
        ),
      ),
    );

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold (
      body: Stack (
        children: [
          Positioned (
            top: 100,
            left: 24,
            child: const TopText(tela: 'login'),
          ),

          Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      inputField('E-mail'),
                      const SizedBox(height: 8,),
                      inputField('Senha'),
                      forgotPassword(),
                      mainButtom('Acessar'),

                      divider(),
                      logos(),
                    ],
                  ),
                ],
              )
          ),
          const Align (
            alignment: Alignment.bottomCenter,
            child: Padding (
              padding: EdgeInsets.only(bottom: 30),
              child: BottomText(tela: 'login'),
            ),
          ),
        ],
      ),

    );
  }
}
