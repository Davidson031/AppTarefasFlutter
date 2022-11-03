import 'package:app_tarefas/models/tarefa.dart';
import 'package:flutter/material.dart';
import '../dados/tarefas.dart';

class ListaDeTarefas with ChangeNotifier{


List<Tarefa> _tarefas = listaMockupTarefas;

List<Tarefa> get tarefas {
    return [..._tarefas];
  }



}