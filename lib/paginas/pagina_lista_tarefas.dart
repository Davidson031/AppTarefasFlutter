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
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: const Text("Tarefas Pendente"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Rotas.TELA_ADICIONAR_TAREFA);
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: FutureBuilder(
        future: Provider.of<ListaDeTarefas>(context, listen: false)
            .carregarTarefas(),
        builder: ((context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return Consumer<ListaDeTarefas>(
              builder: (ctx, tarefas, child) => tarefas.itemsCount == 0
                  ? const Center(child: Text("ZERO"))
                  : ListView.builder(
                      itemCount: tarefas.itemsCount,
                      itemBuilder: (ctx, index) =>
                          TarefaTile(tarefas.tarefas[index]),
                    ),
            );
          }
        }),
      ),
    );
  }
}
