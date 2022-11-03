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

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ListaDeTarefas(),
        ),
      ],
      child: MaterialApp(
        title: 'Tarefas App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          Rotas.TELA_PRINCIPAL: (context) => PaginaListaTarefas(),
        },
      ),
    );
  }
}
