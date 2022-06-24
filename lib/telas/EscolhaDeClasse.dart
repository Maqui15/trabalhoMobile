// ignore_for_file: file_names
import 'package:flutter/material.dart';
import '../Heros.dart';
import 'TelaBatalha.dart';

class EscolhaDeClasse extends StatefulWidget {
  const EscolhaDeClasse({Key? key}) : super(key: key);

  @override
  State<EscolhaDeClasse> createState() => _EscolhaDeClasseState();
}

class _EscolhaDeClasseState extends State<EscolhaDeClasse> {
  Heros hero = Heros();
  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();

    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Nickname'),
              //style: Style,
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
                    hero.classeGuerreiro();
                    hero.nome = nameController.text;
                    print(hero.hp);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Batalha1()));
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
                    hero.classeMago();
                    hero.nome = nameController.text;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Batalha1()));
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
                    hero.classeRogue();
                    hero.nome = nameController.text;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Batalha1()));
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
      ),
    );
  }
}
