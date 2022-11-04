import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../dados/tarefas.dart';
import '../models/listaDeTarefas.dart';

class PaginaListaTarefas extends StatefulWidget {
  const PaginaListaTarefas({Key? key}) : super(key: key);

  @override
  State<PaginaListaTarefas> createState() => _PaginaListaTarefasState();
}

class _PaginaListaTarefasState extends State<PaginaListaTarefas> {

  @override
  Widget build(BuildContext context) {

    final lista = Provider.of<ListaDeTarefas>(context).tarefas;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefas Pendentes"),
        actions: [
        ],
      ),
      body: ListView.builder(
        itemCount: lista.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(lista[index].titulo),
          );
        },
      ),
    );
  }
}
