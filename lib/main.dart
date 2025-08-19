import 'package:flutter/material.dart';
import 'package:projeto_em_flutter/data/task_inherited.dart';
import 'package:projeto_em_flutter/screen/Form_screen.dart';
import 'package:projeto_em_flutter/screen/Inicial_Screen.dart';

// import 'screen/Inicial_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return TaskInherited (
      child: MaterialApp(
        title: 'Flutter Demeo',
        theme: ThemeData(
          useMaterial3: false,
          primarySwatch: Colors.blue,
        ),
        home:  const Incial_Screen(),
      ),
    );
  }
}
