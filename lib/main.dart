import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MarimbaApp());
}

class MarimbaApp extends StatelessWidget {

  Future<void> tocarSom(int numeroDoSom) async {
    // Instancia um objeto do tipo audioplayer
    final player = AudioPlayer();
    // Carrega o som a ser executado
    await player.setSourceAsset('nota$numeroDoSom.wav');
    // Executa o som (equivalente ao play)
    await player.resume();
  }

  Expanded criarBotao({required Color cor, required int numeroDaNota}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          tocarSom(numeroDaNota);
        },
        style: TextButton.styleFrom(
          backgroundColor: cor,
          foregroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
        ),
        // Widget vazio e invisível para garantir que o botão funcione corretamente sem precisar de um child
        child: const SizedBox.shrink(),
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
