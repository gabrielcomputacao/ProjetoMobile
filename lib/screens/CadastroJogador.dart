import 'package:flutter/material.dart';
import 'package:flutter_projetomobile/model/jogador.dart';
import 'package:flutter_projetomobile/providers/providers.dart';
import 'package:provider/provider.dart';
import 'dart:convert';

class Telajogador extends StatefulWidget {
  @override
  TelajogadorState createState() => TelajogadorState();
}

class TelajogadorState extends State<Telajogador> {
  final form = GlobalKey<FormState>();
  final dadosForm = Map<String, Object>();

  void saveForm(context) {
    var formValido = form.currentState!.validate();

    form.currentState!.save();

    final jogadorNovo = Jogador(
      nome: dadosForm['nome'].toString(),
      contato: dadosForm['contato'].toString(),
      email: dadosForm['email'].toString(),
      senha: dadosForm['senha'].toString(),
    );

    if (formValido) {
      Provider.of<jogadorProvider>(context, listen: false)
          .postJogador(jogadorNovo);
      Navigator.of(context).pop(); /* tira a tela do topo da fila */

    }
    ;
  }

  @override
  Widget build(BuildContext context) {
    final jogador = ModalRoute.of(context)!.settings.arguments as Jogador;
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastrar jogador"),
      ),
      backgroundColor: Color(0xFFEEEEEE),
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                  validator: null,
                  decoration: InputDecoration(labelText: "Nome"),
                  textInputAction: TextInputAction.next,
                  initialValue: jogador != null ? jogador.nome : '',
                  onSaved: (value) {
                    dadosForm['nome'] = value.toString();
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                  validator: null,
                  decoration: InputDecoration(labelText: "Contato"),
                  textInputAction: TextInputAction.next,
                  initialValue: jogador != null ? jogador.contato : '',
                  onSaved: (value) {
                    dadosForm['contato'] = value.toString();
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                  validator: null,
                  decoration: InputDecoration(labelText: "E-mail"),
                  textInputAction: TextInputAction.next,
                  initialValue: jogador != null ? jogador.email : '',
                  onSaved: (value) {
                    dadosForm['e-mail'] = value.toString();
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                  validator: null,
                  decoration: InputDecoration(labelText: "Senha"),
                  textInputAction: TextInputAction.next,
                  initialValue: jogador != null ? jogador.senha : '',
                  onSaved: (value) {
                    dadosForm['senha'] = value.toString();
                  },
                  obscureText: true),
            ),
            Row(children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: () => saveForm(context),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Cadastrar"),
                    ),
                  ),
                ),
              )
            ])
          ])),
    );
  }
}
