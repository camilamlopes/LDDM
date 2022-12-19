import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../home/home.dart';
import 'components/top_text.dart';
import 'components/bottom_text.dart';
import '../../controllers/navigator_controller.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}
class _SignupScreenState extends State<SignupScreen> {

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
                builder: (context) => NavigatorController()
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
      body: ListView (
        children: [
          Padding (
            padding: const EdgeInsets.only(top: 60, left: 25),
            child: const TopText(tela: 'signup'),
          ),

          Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      inputField('Nome'),
                      const SizedBox(height: 8,),
                      inputField('Sobrenome'),
                      const SizedBox(height: 8,),
                      inputField('E-mail'),
                      const SizedBox(height: 8,),
                      inputField('Senha'),
                      const SizedBox(height: 8,),
                      inputField('CEP'),
                      const SizedBox(height: 8,),
                      inputField('Telefone'),
                      const SizedBox(height: 30,),
                      mainButtom('Cadastrar'),
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
              child: BottomText(tela: 'signup'),
            ),
          ),
        ],
      ),
    );
  }
}
