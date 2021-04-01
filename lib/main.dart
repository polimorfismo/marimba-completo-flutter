import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(MarimbaApp());

class MarimbaApp extends StatelessWidget {
  void tocarSom(int numeroDoSom) {
    final player = AudioCache();
    player.play('nota$numeroDoSom.wav');
  }

  Expanded criarBotao({Color cor, int numeroDaNota}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          tocarSom(numeroDaNota);
        },
        style: TextButton.styleFrom(backgroundColor: cor),
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              criarBotao(cor: Colors.teal, numeroDaNota: 1),
              criarBotao(cor: Colors.blue, numeroDaNota: 2),
              criarBotao(cor: Colors.yellow, numeroDaNota: 3),
              criarBotao(cor: Colors.red, numeroDaNota: 4),
              criarBotao(cor: Colors.grey, numeroDaNota: 5),
              criarBotao(cor: Colors.purple, numeroDaNota: 6),
              criarBotao(cor: Colors.brown, numeroDaNota: 7),
            ],
          ),
        ),
      ),
    );
  }
}
