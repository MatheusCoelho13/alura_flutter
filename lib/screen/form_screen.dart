import 'package:flutter/material.dart';
import 'package:projeto_em_flutter/data/task_inherited.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key, required this.TaskContext});

final BuildContext TaskContext;
  @override
  State<FormScreen> createState() => FormScreenState();
}

class FormScreenState extends State<FormScreen> {
  TextEditingController nameController =
      TextEditingController();
  TextEditingController difficultController =
      TextEditingController();
  TextEditingController imageController =
      TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(title: const Text('NOVA  tarefa')),
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              height: 650,
              width: 375,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.black,
                  width: 3,
                ),
              ),
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.spaceEvenly,
                crossAxisAlignment:
                    CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      validator: (String? value) {
                        if (value != null &&
                            value.isEmpty) {
                          return "Insira o nome da tafera";
                        }
                      },
                      controller: nameController,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'nome',
                        fillColor: Colors.white70,
                        filled: true,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty ||
                            int.parse(value) > 5 ||
                            int.parse(value) < 1) {
                          return "Insira a dificuldade  entre 1 a 5";
                        }
                      },
                      keyboardType: TextInputType.number,
                      controller: difficultController,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'difficult',
                        fillColor: Colors.white70,
                        filled: true,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      onChanged: (text) {
                        setState(() {});
                      },
                      validator: (String? value) {
                        if (value != null &&
                            value.isEmpty) {
                          return "Insira uma url de imagem";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.url,
                      controller: imageController,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Imagem',
                        fillColor: Colors.white70,
                        filled: true,
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 72,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                      border: Border.all(
                        width: 2,
                        color: Colors.blue,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                      child: Image.network(
                        imageController.text,
                        errorBuilder:
                            (
                              BuildContext context,
                              Object exeception,
                              StackTrace? stackTrace,
                            ) {
                              return Image.asset(
                                './assets/Images/no_photo.png',
                              );
                            },
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!
                          .validate()) {
                        // print(nameController.text);
                        // print(difficultController.text);
                        // print(imageController.text);
                        TaskInherited.of(widget.TaskContext).newTask(
                          nameController.text,
                          imageController.text,
                          int.parse(
                            difficultController.text,
                          ),
                        );
                        ScaffoldMessenger.of(
                          context,
                        ).showSnackBar(
                          const SnackBar(
                            content: Text(
                              'Printando nova Tarefa',
                            ),
                          ),
                        );
                        Navigator.pop(context);
                      }
                    },
                    child: Text('Adicionar!'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
