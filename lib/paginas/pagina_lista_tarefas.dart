import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../dados/tarefas.dart';

class PaginaListaTarefas extends StatefulWidget {
  const PaginaListaTarefas({Key? key}) : super(key: key);

  @override
  State<PaginaListaTarefas> createState() => _PaginaListaTarefasState();
}

class _PaginaListaTarefasState extends State<PaginaListaTarefas> {

  final lista = listaDeTarefas;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefas Pendentes"),
        actions: [],
      ),
      body: ListView.builder(
        itemCount: listaDeTarefas.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text(listaDeTarefas[index].titulo),
          );
        },
      ),
    );
  }
}
