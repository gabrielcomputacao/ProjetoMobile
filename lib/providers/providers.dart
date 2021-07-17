import 'dart:convert';
import 'package:flutter/material.dart';

import 'package:flutter_projetomobile/Variaveis/variaveis.dart';
import 'package:flutter_projetomobile/model/jogador.dart';
import 'package:http/http.dart' as http;

class jogadorProvider with ChangeNotifier {
  Future<void> postJogador(Jogador jogador) async {
    var url = Uri.https(Variaveis.BACKURL, '/montadoras.json');
    http
        .post(url,
            body: jsonEncode(
              {
                'nome': jogador.nome,
                'contato': jogador.contato,
                'email': jogador.email,
                'senha': jogador.senha,
              },
            ))
        .then((value) {});
  }
}
