import 'package:flutter/material.dart';
import 'package:jogo_mobile/Heros.dart';
import 'package:jogo_mobile/telas/Batalha1.dart';

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
                  backgroundColor: const Color.fromARGB(120, 158, 158, 158),
                ),
                onPressed: () {
                  Heros hero = Heros();
                  var escolha = 'Guerreiro';
                  hero.escolhaClasse(escolha);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Batalha1()));
                },
                child: const Text(
                  'Guerreiro',
                  style: TextStyle(
                    color: Color.fromARGB(167, 255, 153, 0),
                    fontSize: 24,
                  ),
                )),
          ),
          Container(
            width: 300,
            margin: const EdgeInsets.all(20),
            child: TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(16.0),
                  primary: Colors.black,
                  textStyle: const TextStyle(fontSize: 22),
                  backgroundColor: const Color.fromARGB(120, 158, 158, 158),
                ),
                onPressed: () {
                  Heros hero = Heros();
                  var escolha = 'Mago';
                  hero.escolhaClasse(escolha);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Batalha1()));
                },
                child: const Text(
                  'Mago',
                  style: TextStyle(
                    color: Color.fromARGB(167, 255, 153, 0),
                    fontSize: 24,
                  ),
                )),
          ),
          Container(
            width: 300,
            margin: const EdgeInsets.all(20),
            child: TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(16.0),
                  primary: Colors.black,
                  textStyle: const TextStyle(fontSize: 22),
                  backgroundColor: const Color.fromARGB(120, 158, 158, 158),
                ),
                onPressed: () {
                  Heros hero = Heros();
                  var escolha = 'Rogue';
                  hero.escolhaClasse(escolha);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Batalha1()));
                },
                child: const Text(
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
