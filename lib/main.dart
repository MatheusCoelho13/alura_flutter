import 'package:flutter/material.dart';

import 'screen/Inicial_Screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demeo',
      theme: ThemeData(useMaterial3: false, primarySwatch: Colors.blue),
      home:  const Incial_Screen()
    );
  }
}






