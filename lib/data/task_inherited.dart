import 'package:flutter/material.dart';
import 'package:projeto_em_flutter/components/Task.dart';


class TaskInherited extends InheritedWidget {
  TaskInherited({Key? key, required Widget child})
    : super(key: key, child: child);

  final List<Task> taskList = [
    Task('Aprender Flutter', 'assets/Images/dash.png', 3),
    Task('Andar de Bike', 'assets/Images/bike.webp', 2),
    Task('Meditar', 'assets/Images/meditar.jpeg', 5),
    Task('Ler', 'assets/Images/livro.jpg', 4),
    Task('Jogar', 'assets/Images/jogar.jpg', 1),
  ];

  void newTask(String name, String photo, int difficulty) {
    taskList.add(Task(name, photo, difficulty));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result = context
        .dependOnInheritedWidgetOfExactType<
          TaskInherited
        >();
    assert(
      result != null,
      'No TaskInherited found in context',
    );
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}
