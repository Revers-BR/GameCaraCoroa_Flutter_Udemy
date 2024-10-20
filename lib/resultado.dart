
import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {

  final String jogada;

  const Resultado({super.key, required this.jogada});

  @override
  ResultadoState createState() => ResultadoState();
}

class ResultadoState extends State<Resultado> {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      backgroundColor: const Color(0xff67ba8d),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset("imagens/moeda_${widget.jogada}.png"),
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Image.asset("imagens/botao_voltar.png"),
            ),
            onTap: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}
