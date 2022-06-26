// ignore_for_file: file_names, avoid_print

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:jogo_mobile/Atributos.dart';
import 'package:jogo_mobile/HeroBatalha.dart';
import 'package:jogo_mobile/telas/Inicial.dart';

import 'TelaVitoria.dart';

class Batalha1 extends StatefulWidget {
  const Batalha1({Key? key}) : super(key: key);

  @override
  State<Batalha1> createState() => _Batalha1State();
}

class _Batalha1State extends State<Batalha1> {
  HeroBatalha b = HeroBatalha();
  Atributos att = Atributos();
  double monsterHP = 100;
  double hP = 100;
  double mana = 100;
  var duration = const Duration(milliseconds: 1);

  Widget char() {
    return Container(
        margin: const EdgeInsets.only(top: 220),
        height: 210,
        width: 170,
        child: AnimatedPadding(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOutExpo,
          padding: const EdgeInsets.only(left: 0),
          child: Row(
            children: [
              Image.asset(
                "lib/images/boy.gif",
                width: 150,
                height: 210,
              )
            ],
          ),
        ));
  }

  Widget monsterChar() {
    return Container(
        margin: const EdgeInsets.only(top: 220),
        height: 210,
        width: 170,
        child: AnimatedPadding(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOutExpo,
          padding: const EdgeInsets.only(left: 0),
          child: Row(
            children: [
              Image.asset(
                "lib/images/monstro.gif",
                width: 150,
                height: 210,
              )
            ],
          ),
        ));
  }

  void ataque() {
    setState(() {
      att.getAtts();
      monsterHP = att.monsterHp as double;
      hP = att.hp as double;
      mana = att.mana as double;
    });
  }

  Future<void> alerta() async {
    return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Vitória!'),
            content: const Text('Seguir para a proxima sala'),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TelaVitoria()));
                  },
                  child: const Text('Proximo')),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: double.infinity,
      child: Column(children: [
        Container(
          padding:
              const EdgeInsets.only(right: 30, left: 30, top: 50, bottom: 10),
          height: 516,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("lib/images/cenario.jpeg"),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              LinearProgressIndicator(
                backgroundColor: Colors.white,
                valueColor: const AlwaysStoppedAnimation(Colors.red),
                minHeight: 18,
                value: monsterHP,
                semanticsValue: monsterHP.toString(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  char(),
                  monsterChar(),
                ],
              ),
            ],
          ),
        ),
        //Menu de Skills e status
        Container(
          width: double.infinity,
          color: Colors.black,
          height: 350,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 350,
                margin: const EdgeInsets.only(top: 10),
                child: LinearProgressIndicator(
                  backgroundColor: Colors.white,
                  valueColor: const AlwaysStoppedAnimation(Colors.green),
                  minHeight: 18,
                  value: hP,
                  semanticsValue: hP.toString(),
                ),
              ),
              Container(
                width: 350,
                margin: const EdgeInsets.all(10),
                child: LinearProgressIndicator(
                  backgroundColor: Colors.white,
                  valueColor: const AlwaysStoppedAnimation(Colors.blue),
                  minHeight: 18,
                  value: mana,
                  semanticsValue: mana.toString(),
                ),
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(
                    left: 50, right: 50, bottom: 20, top: 20),
                height: 35,
                child: TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(10.0),
                      primary: Colors.black,
                      textStyle: const TextStyle(fontSize: 14),
                      backgroundColor: const Color.fromARGB(120, 158, 158, 158),
                    ),
                    onPressed: () {
                      b.batalhar(1);
                      att.getAtts();
                      ataque();
                      if (att.monsterHp <= 0) {
                        alerta();
                      } else {
                        sleep(duration);
                        b.monsterATK();
                        if (att.hp <= 0) {
                          sleep(duration);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Inicial()));
                        }
                      }
                    },
                    child: const Text('Skill 1')),
              ),
              Container(
                  width: double.infinity,
                  margin:
                      const EdgeInsets.only(left: 50, right: 50, bottom: 20),
                  height: 35,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(10.0),
                      primary: Colors.black,
                      textStyle: const TextStyle(fontSize: 14),
                      backgroundColor: const Color.fromARGB(120, 235, 233, 233),
                    ),
                    child: const Text('Skill 2'),
                    onPressed: () {
                      b.batalhar(2);
                      att.getAtts();
                      ataque();
                      if (att.monsterHp <= 0) {
                        alerta();
                      } else {
                        sleep(duration);
                        b.monsterATK();
                        if (att.hp <= 0) {
                          sleep(duration);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Inicial()));
                        }
                      }
                    },
                  )),
              Container(
                  width: double.infinity,
                  margin:
                      const EdgeInsets.only(left: 50, right: 50, bottom: 20),
                  height: 35,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(10.0),
                      primary: Colors.black,
                      textStyle: const TextStyle(fontSize: 14),
                      backgroundColor: const Color.fromARGB(120, 235, 233, 233),
                    ),
                    child: const Text('Skill 3'),
                    onPressed: () {
                      b.batalhar(3);
                      att.getAtts();
                      ataque();
                      if (att.monsterHp <= 0) {
                        alerta();
                      } else {
                        sleep(duration);
                        b.monsterATK();
                        if (att.hp <= 0) {
                          sleep(duration);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Inicial()));
                        }
                      }
                    },
                  ))
            ],
          ),
        ),
      ]),
    ));
  }
}
