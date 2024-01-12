import 'package:flutter/material.dart';
import 'package:truco_app/tela_inicial.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Truco Contador',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TrucoContador(),
    );
  }
}
