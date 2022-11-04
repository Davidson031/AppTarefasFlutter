import 'package:app_tarefas/paginas/pagina_adicionar_tarefa.dart';
import 'package:app_tarefas/paginas/pagina_lista_tarefas.dart';
import 'package:app_tarefas/utils/rotas.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/listaDeTarefas.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ListaDeTarefas(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Tarefas App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          Rotas.TELA_PRINCIPAL: (context) => PaginaListaTarefas(),
          Rotas.TELA_ADICIONAR_TAREFA: (context) => PaginaAdicionarTarefa(),
        },
      ),
    );
  }
}
