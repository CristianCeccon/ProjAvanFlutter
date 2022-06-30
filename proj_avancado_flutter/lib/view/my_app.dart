import 'package:flutter/material.dart';
import 'package:proj_avancado_flutter/view/calculadora.dart';
import 'package:proj_avancado_flutter/view/calculadora_idade.dart';
import 'package:proj_avancado_flutter/view/hello_world.dart';

import 'menu.dart';
import 'my_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => Menu(),
        '/contador': (context) => const MyHomePage(),
        '/helloworld': (context) => HelloWorld(),
        '/calculadoraidade': (context) => CalculadoraIdade(),
        //'/calculadora': (context) => Calculadora(),
      },
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
