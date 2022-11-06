import 'package:app_tarefas/models/tarefa.dart';
import 'package:flutter/material.dart';
import '../dados/tarefas.dart';

class ListaDeTarefas with ChangeNotifier {
  List<Tarefa> _tarefas = listaMockupTarefas;

  List<Tarefa> get tarefas {
    return [..._tarefas];
  }

  void adicionarTarefa(Tarefa tarefa) {
    _tarefas.add(tarefa);
    notifyListeners();
  }

  int get itemsCount {
    return _tarefas.length;
  }

  Future<void> removerTarefa(Tarefa tarefa) async {
    await Future.delayed(const Duration(seconds: 2), () {}).then((_) {
      _tarefas.removeWhere((element) => tarefa.id == element.id);

      notifyListeners();
    });

    print(_tarefas);
  }

  Future<void> carregarTarefas() async {

    await Future.delayed(const Duration(seconds: 2), () {}).then((value) {});

    notifyListeners();
  }
}
