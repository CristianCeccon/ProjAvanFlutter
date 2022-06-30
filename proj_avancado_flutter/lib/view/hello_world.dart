import 'package:flutter/material.dart';

class HelloWorld extends StatefulWidget {
  @override
  State<HelloWorld> createState() => _HelloWorldState();
}

class _HelloWorldState extends State<HelloWorld> {
  int _counter = 0;

  Dialog(String mensagem, BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text(mensagem),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    String? nome;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(114, 47, 55, 10),
        title: const Text("HelloWorld"),
      ),
      body: Form(
        child: Column(
          children: [
            TextField(
              onChanged: (valorDigitado) {
                nome = valorDigitado;
              },
              decoration: const InputDecoration(
                  label: Text('Nome'), hintText: "Digite o seu nome completo"),
            ),
            ElevatedButton(
              child: const Text("Ok"),
              onPressed: () => (print("Hello World $nome")),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
