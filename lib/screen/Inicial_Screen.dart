// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:projeto_em_flutter/components/Task.dart';

class Incial_Screen extends StatefulWidget {
  const Incial_Screen({super.key});

  @override
  State<Incial_Screen> createState() => _IncialScreenState();
}

class _IncialScreenState extends State<Incial_Screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(leading: Container(), title: Text("Tarefas")),
      body: ListView(
        children: [
          Task(
            'Aprender Flutter',
            'assets/Images/dash.png',
            4,
          ),
          Task(
            'Meditar',
            'assets/Images/meditar.jpeg',
            5,
          ),
          Task(
            'Andar de Bike',
            'assets/Images/bike.webp',
            3,
          ),
          Task(
            'Ler',
            'assets/Images/livro.jpg',
            4,
          ),
          Task(
            'Jogar',
            'assets/Images/meditar.jpeg',
            1,
          ),
          SizedBox(height: 80,)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}