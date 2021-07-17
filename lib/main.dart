import 'package:flutter/material.dart';
import 'package:flutter_projetomobile/Variaveis/rotas.dart';
import 'package:flutter_projetomobile/providers/providers.dart';
import 'package:provider/provider.dart';
import 'screens/TelaInicial.dart';
import 'screens/CadastroJogador.dart';
import 'screens/CadastrarJogo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => jogadorProvider(),
        child: MaterialApp(
          title: 'Uno',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          routes: {
            Rotas.HOME: (context) => Telajogador(),
            /* Rotas.form_jogador: (context) => Telajogador(), */
          },
        ));
  }
}
