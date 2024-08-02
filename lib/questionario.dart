import 'package:flutter/material.dart';
import 'questao.dart';
import 'resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function() quantoResponde;

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  Questionario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.quantoResponde,
  });

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada]['respostas']
            as List<Map<String, Object>>
        : [];

    return Column(
      children: <Widget>[
        Questao(perguntas[perguntaSelecionada]['texto'].toString()),
        ...respostas
            .map((resp) => Resposta(resp['texto'] as String, quantoResponde))
            .toList(),
      ],
    );
  }
}
