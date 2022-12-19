import 'package:flutter/material.dart';


class TopText extends StatefulWidget {
  final String tela;

  const TopText({
    Key? key,
    required this.tela,
  }) : super(key: key);

  @override
  State<TopText> createState() => _TopTextState();
}

class _TopTextState extends State<TopText> {

  @override
  Widget build(BuildContext context) {
    return Text (
      widget.tela == 'login'
          ? 'Acessar\nConta'
          : 'Cadastrar\nConta',
      style: const TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

