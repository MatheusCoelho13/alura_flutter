// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:projeto_em_flutter/components/Task.dart';
import 'package:projeto_em_flutter/data/task_inherited.dart';
import 'package:projeto_em_flutter/screen/form_screen.dart';

class Incial_Screen extends StatefulWidget {
  const Incial_Screen({super.key});

  @override
  State<Incial_Screen> createState() =>
      _IncialScreenState();
}

class _IncialScreenState
    extends State<Incial_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: Text("Tarefas"),
      ),
      body: ListView(
        children: TaskInherited.of(context).taskList,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FormScreen(TaskContext: context,),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
