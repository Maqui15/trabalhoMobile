import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:jogo_mobile/Heros.dart';
import 'package:jogo_mobile/telas/Inicial.dart';

class EscolhaDeClasse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 300,
            margin: EdgeInsets.all(20),
            child: TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(16.0),
                  primary: Colors.black,
                  textStyle: const TextStyle(fontSize: 22),
                  backgroundColor: Color.fromARGB(120, 158, 158, 158),
                ),
                onPressed: () {
                  Heros hero = new Heros();
                  var escolha = 'Guerreiro';
                  hero.escolhaClasse(escolha);
                },
                child: Text(
                  'Guerreiro',
                  style: TextStyle(
                    color: Color.fromARGB(167, 255, 153, 0),
                    fontSize: 24,
                  ),
                )),
          ),
          Container(
            width: 300,
            margin: EdgeInsets.all(20),
            child: TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(16.0),
                  primary: Colors.black,
                  textStyle: const TextStyle(fontSize: 22),
                  backgroundColor: Color.fromARGB(120, 158, 158, 158),
                ),
                onPressed: () {
                  Heros hero = new Heros();
                  var escolha = 'Mago';
                  hero.escolhaClasse(escolha);;
                },
                child: Text(
                  'Mago',
                  style: TextStyle(
                    color: Color.fromARGB(167, 255, 153, 0),
                    fontSize: 24,
                  ),
                )),
          ),
          Container(
            width: 300,
            margin: EdgeInsets.all(20),
            child: TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(16.0),
                  primary: Colors.black,
                  textStyle: const TextStyle(fontSize: 22),
                  backgroundColor: Color.fromARGB(120, 158, 158, 158),
                ),
                onPressed: () {
                  Heros hero = new Heros();
                  var escolha = 'Rogue';
                  hero.escolhaClasse(escolha);
                },
                child: Text(
                  'Rogue',
                  style: TextStyle(
                    color: Color.fromARGB(167, 255, 153, 0),
                    fontSize: 24,
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
