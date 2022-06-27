// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:jogo_mobile/telas/SegundaTela.dart';

class Inicial extends StatelessWidget {
  const Inicial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<void> alerta() async {
      return showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
                title: const Text('Sobre o App'),
                content: const Text(
                    'Integranter: \nRodrigo Di Jorge, Mathues Quintanilha e Valerio Zucoloto\n Objetivo: criar um RPG em turnos\n Semestre:2022/1'),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('OK')),
                ]);
          });
    }

    return Scaffold(
      body: Container(
        height: 900,
        width: double.infinity,
        padding:
            const EdgeInsets.only(left: 30, right: 30, bottom: 30, top: 200),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("lib/images/menu.jpeg"), fit: BoxFit.cover)),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  'RPG',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Adventures',
                  style: TextStyle(color: Colors.orange, fontSize: 22),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(100),
                  width: 600,
                  child: TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(16.0),
                        primary: Colors.black,
                        textStyle: const TextStyle(fontSize: 22),
                        backgroundColor: Colors.grey,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SegundaTela()),
                        );
                      },
                      child: const Text(
                        'Jogar',
                        style: TextStyle(fontSize: 16),
                      )),
                ),
                Container(
                  margin: const EdgeInsets.all(100),
                  width: 600,
                  child: TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(16.0),
                        primary: Colors.black,
                        textStyle: const TextStyle(fontSize: 22),
                        backgroundColor: Colors.grey,
                      ),
                      onPressed: () {
                        alerta();
                      },
                      child: const Text(
                        'Sobre',
                        style: TextStyle(fontSize: 16),
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
