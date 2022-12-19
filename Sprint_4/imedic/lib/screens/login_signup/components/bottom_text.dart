import 'package:flutter/material.dart';
import '../../../utils/constants.dart';

import '../login_screen.dart';
import '../signup_screen.dart';

class BottomText extends StatefulWidget {
  final String tela;

  const BottomText({
    Key? key,
    required this.tela,
  }) : super(key : key);

  @override
  State<BottomText> createState() => _BottomTextState();
}

class _BottomTextState extends State<BottomText> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

      },

      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.tela == 'signup'
                  ? 'Já possui uma conta?'
                  : 'Não possui uma conta?',
              style: const TextStyle (
                fontSize: 12,
                fontFamily: 'Montserrat',
                color: kSecondaryColor,
              ),
            ),

            TextButton(
              onPressed: () {
                widget.tela == 'signup'
                    ? Navigator.push (
                        context,
                        MaterialPageRoute (
                          builder: (context) => LoginScreen()
                        ),
                      )
                    : Navigator.push (
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignupScreen()
                        ),
                      );
              },
              child: Text(
                widget.tela == 'signup'
                    ? 'Acessar'
                    : 'Cadastrar',
                style: const TextStyle(
                  fontSize: 14,
                  fontFamily: 'Montserrat',
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
