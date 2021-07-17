import 'package:flutter/material.dart';
import '../components/SCard.dart';
import '../mockdata/jogador.dart';

class TelaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jogadores"),
      ),
      backgroundColor: Color(0xFFEEEEEE),
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              /* TODO: Os dados aqui são puxados do banco de dados */
              children: JOGADOR_MOCK.map<Widget>((e) {
                return Scard(child: Text(e.nome));
              }).toList(),
            ),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
