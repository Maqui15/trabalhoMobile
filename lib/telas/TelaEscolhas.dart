// ignore_for_file: file_names

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:jogo_mobile/Atributos.dart';
import 'package:jogo_mobile/dados.dart';

import '../trap.dart';
import 'TelaBatalha.dart';
import 'TelaBoss.dart';

class Telaescolha extends StatefulWidget {
  const Telaescolha({Key? key}) : super(key: key);

  @override
  State<Telaescolha> createState() => _TelaescolhaState();
}

class _TelaescolhaState extends State<Telaescolha> {
  Atributos att = Atributos();
  Dados dado = Dados();
  Trap trap = Trap();

  Future<void> alerta(String texto) async {
    return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Vitória!'),
            content: Text(texto),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      margin: const EdgeInsets.only(right: 20),
                      child: TextButton(
                          onPressed: () {
                            att.getAtts();
                            att.hp = 100;
                            att.setHero();
                            att.contador += 1;
                            att.setCount();
                            if (att.contador >= 9) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const TelaBoss()));
                            } else {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Batalha1()));
                            }
                          },
                          child: const Text('OK'))),
                ],
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: 900,
        padding:
            const EdgeInsets.only(left: 25, right: 25, top: 70, bottom: 50),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("lib/images/cenario.jpeg"),
                fit: BoxFit.cover)),
        child: Column(children: [
          Container(
            width: double.infinity,
            height: 350,
            color: Colors.black,
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [Text(trap.textoRPG())],
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Container(
                    width: double.infinity,
                    margin: const EdgeInsets.all(30),
                    child: TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.black,
                          textStyle: const TextStyle(fontSize: 14),
                          backgroundColor:
                              const Color.fromARGB(255, 160, 157, 157),
                        ),
                        onPressed: () {
                          String escolha = trap.escolha(1);
                          alerta(escolha);
                        },
                        child: const Text('Opção 1'))),
                Container(
                    width: double.infinity,
                    margin: const EdgeInsets.all(30),
                    child: TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.black,
                          textStyle: const TextStyle(fontSize: 14),
                          backgroundColor:
                              const Color.fromARGB(255, 160, 157, 157),
                        ),
                        onPressed: () {
                          String escolha = trap.escolha(2);
                          alerta(escolha);
                        },
                        child: const Text('Opção 1'))),
                Container(
                    width: double.infinity,
                    margin: const EdgeInsets.all(30),
                    child: TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.black,
                          textStyle: const TextStyle(fontSize: 14),
                          backgroundColor:
                              const Color.fromARGB(255, 160, 157, 157),
                        ),
                        onPressed: () {
                          String escolha = trap.escolha(3);
                          alerta(escolha);
                        },
                        child: const Text('Opção 1'))),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
