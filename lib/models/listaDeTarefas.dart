import 'package:app_tarefas/models/tarefa.dart';
import 'package:flutter/material.dart';
import '../dados/tarefas.dart';

class ListaDeTarefas with ChangeNotifier {
  List<Tarefa> _tarefas = listaMockupTarefas;

  List<Tarefa> get tarefas {
    return [..._tarefas];
  }

  void adicionarTarefa(Tarefa tarefa){
    _tarefas.add(tarefa);
    notifyListeners();
  }

  void removerTarefa(Tarefa tarefa){

    //int index = _tarefas.indexWhere((element) => tarefa.id == element.id);

    _tarefas.removeWhere((element) => tarefa.id == element.id);

    print('Remover Tarefa');

    notifyListeners();

    //_tarefas.remo


  }
}
