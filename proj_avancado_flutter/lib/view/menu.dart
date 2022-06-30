import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  var primeiroBotao = ElevatedButton(
    child: const Text("Primeiro Botão"),
    onPressed: () {
      print("Primeiro Botão");
    },
  );
  Widget criarBotao(String rotulo, VoidCallback? acao) {
    return ElevatedButton(
      child: Text(rotulo),
      onPressed: acao,
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          criarBotao(
              'Contador', () => Navigator.pushNamed(context, '/contador')),
          criarBotao(
              'Hello World', () => Navigator.pushNamed(context, '/helloworld')),
          criarBotao('Calcular Idade',
              () => Navigator.pushNamed(context, '/calculadoraidade')),
          criarBotao('Calculadora',
              () => Navigator.pushNamed(context, '/calculadora')),
        ],
      ),
    ));
  }
}
