import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../components/TarefaTile.dart';
import '../dados/tarefas.dart';
import '../models/listaDeTarefas.dart';
import '../utils/rotas.dart';

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
      extendBody: true,
      appBar: AppBar(
        title: const Text("Tarefas Pendentes"),
        actions: [
          IconButton(onPressed: (){
            Navigator.of(context).pushNamed(Rotas.TELA_ADICIONAR_TAREFA);
          }, icon: Icon(Icons.add))
        ],
      ),
      body: ListView.builder(
        itemCount: lista.length,
        itemBuilder: (context, index) {
          return TarefaTile(lista[index]);
        },
      ),
    );
  }
}
