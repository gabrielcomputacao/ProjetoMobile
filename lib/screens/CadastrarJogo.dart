import 'package:flutter/material.dart';

class CadastrarJogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastrar jogo"),
      ),
      backgroundColor: Color(0xFFEEEEEE),
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                validator: null,
                decoration: InputDecoration(labelText: "Posição"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                validator: null,
                decoration: InputDecoration(labelText: "Numero de jogadores"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                validator: null,
                decoration: InputDecoration(labelText: "Data"),
              ),
            ),
            Row(children: [
              Expanded(
                  child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(
                          onPressed: null,
                          child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text("Cadastrar")))))
            ])
          ])),
    );
  }
}
