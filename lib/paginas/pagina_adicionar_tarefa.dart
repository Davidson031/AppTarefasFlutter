import 'package:app_tarefas/models/listaDeTarefas.dart';
import 'package:app_tarefas/models/tarefa.dart';
import 'package:app_tarefas/utils/rotas.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class PaginaAdicionarTarefa extends StatefulWidget {
  const PaginaAdicionarTarefa({Key? key}) : super(key: key);

  @override
  State<PaginaAdicionarTarefa> createState() => _PaginaAdicionarTarefaState();
}

class _PaginaAdicionarTarefaState extends State<PaginaAdicionarTarefa> {
  final _formKey = GlobalKey<FormState>();
  String _tituloTarefa = '';
  String _linkTarefa = '';

  void enviarForm() {
    _formKey.currentState?.save();

    final provider = Provider.of<ListaDeTarefas>(context, listen: false)
        .adicionarTarefa(Tarefa("10", _tituloTarefa, _linkTarefa));

    Navigator.of(context).popAndPushNamed(Rotas.TELA_PRINCIPAL);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adicionar'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            TextFormField(
              decoration: const InputDecoration(labelText: "Título"),
              onSaved: (titulo) => _tituloTarefa = titulo!,
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: "Foto (Link)"),
              onSaved: (link) => _linkTarefa = link!,
            ),
            TextButton(
              onPressed: enviarForm,
              child: const Text('Cadastrar'),
            )
          ],
        ),
      ),
    );
  }
}
