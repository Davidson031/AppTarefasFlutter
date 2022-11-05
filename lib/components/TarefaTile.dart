// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_tarefas/models/listaDeTarefas.dart';
import 'package:app_tarefas/models/tarefa.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class TarefaTile extends StatelessWidget {
  Tarefa tarefa;

  TarefaTile(this.tarefa);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, top: 20, right: 30),
      padding: const EdgeInsets.only(top: 7, bottom: 7),
      decoration: const BoxDecoration(
        color: Color.fromRGBO(64, 75, 96, 0.8),
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: ListTile(
        leading: Container(
          padding: EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
              border: Border(
            right: BorderSide(width: 2.0, color: Colors.white),
          )),
          child: IconButton(
            constraints: BoxConstraints(minHeight: 100, minWidth: 50),
            onPressed: () => Provider.of<ListaDeTarefas>(context, listen: false).removerTarefa(tarefa),
            icon: Icon(Icons.done, color: Colors.green, size: 40.0),
          ),
        ),
        title: Text(
          tarefa.titulo,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        subtitle: Row(
          children: [
            Icon(
              Icons.linear_scale,
              color: Colors.grey,
              size: 40,
            ),
          ],
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.delete, color: Colors.red, size: 22.0),
          ],
        ),
      ),
    );
  }
}
