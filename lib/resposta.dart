import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  final ButtonStyle style = ElevatedButton.styleFrom(
      foregroundColor: Colors.white, backgroundColor: Colors.blue);

  Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: style,
        onPressed: quandoSelecionado,
        child: Text(texto),
      ),
    );
  }
}
