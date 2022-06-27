// ignore_for_file: file_names, avoid_print
import 'package:flutter/material.dart';
import '../Atributos.dart';
import 'TelaBatalha.dart';

class EscolhaDeClasse extends StatefulWidget {
  const EscolhaDeClasse({Key? key}) : super(key: key);

  @override
  State<EscolhaDeClasse> createState() => _EscolhaDeClasseState();
}

class _EscolhaDeClasseState extends State<EscolhaDeClasse> {
  Future<void> alerta() async {
    return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Alerta!'),
            content: const Text('Nickname não pode ser vazio.'),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('OK')),
            ],
          );
        });
  }

  Atributos att = Atributos();
  final nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("lib/images/tela.jpg"), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Color.fromARGB(157, 255, 255, 255),
              margin: EdgeInsets.all(30),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(labelText: 'Nome: '),
                //style: Style,
              ),
            ),
            Container(
              width: 300,
              margin: const EdgeInsets.all(20),
              child: TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    primary: Colors.black,
                    textStyle: const TextStyle(fontSize: 22),
                    backgroundColor: Color.fromARGB(255, 158, 158, 158),
                  ),
                  onPressed: () {
                    String nome = nameController.text;
                    if (nameController.text != '') {
                      att.classeGuerreiro(nome);
                      att.setAtts();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Batalha1()));
                    } else {
                      alerta();
                    }
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
                    backgroundColor: Color.fromARGB(255, 158, 158, 158),
                  ),
                  onPressed: () {
                    String nome = nameController.text;
                    if (nameController.text != '') {
                      att.classeMago(nome);
                      att.setAtts();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Batalha1()));
                    } else {
                      alerta();
                    }
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
                    backgroundColor: Color.fromARGB(255, 158, 158, 158),
                  ),
                  onPressed: () {
                    String nome = nameController.text;
                    if (nameController.text != '') {
                      att.classeRogue(nome);
                      att.setAtts();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Batalha1()));
                    } else {
                      alerta();
                    }
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
