import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CalculadoraIdade extends StatefulWidget {
  @override
  State<CalculadoraIdade> createState() => _CalculadoraIdadeState();
}

class _CalculadoraIdadeState extends State<CalculadoraIdade> {
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
    int? idade;
    String? idadeString;

    void calcularIdade(int idade) {
      idade = 2022 - idade;
      setState(() {
        idadeString = idade.toString();
      });
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 0, 127, 10),
        title: const Text("Calculadora Idade"),
      ),
      body: Form(
        child: Column(
          children: [
            TextFormField(
                keyboardType: TextInputType.datetime,
                onChanged: (idade2) {
                  idade = int.parse(idade2);
                },
                decoration: const InputDecoration(
                    labelText: "Ano",
                    hintText: "Exemplo: 2002",
                    icon: Icon(Icons.calculate))),
            ElevatedButton(
                child: const Text("Ok"),
                onPressed: () => calcularIdade(idade!)),
            Text("Sua idade é: $idadeString"),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
