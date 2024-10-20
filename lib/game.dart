import 'dart:math';

import 'package:flutter/material.dart';
import 'package:game_cara_coroa/resultado.dart';

class Game extends StatefulWidget {

  const Game({super.key});

  @override
  GameState createState() => GameState();
}

class GameState extends State<Game> {

  final jogadas = ["cara","coroa"];

  void _calculaResultado(){
    
    final numeroAleatorio = Random().nextInt( jogadas.length);

    final jogada = jogadas[ numeroAleatorio ];

    Navigator.push(
      context, 
      MaterialPageRoute(
        builder: (context) => Resultado(jogada: jogada)
      )
    );
  }
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      backgroundColor: const Color(0xff67ba8d),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset("imagens/logo.png"),
          GestureDetector(
            onTap: _calculaResultado,
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Image.asset("imagens/botao_jogar.png"),
            ),
          )
        ],
      ),
    );
  }
}
