// ignore_for_file: file_names, avoid_print

import 'dart:io';
import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:jogo_mobile/Atributos.dart';
import 'package:jogo_mobile/Batalha.dart';
import 'package:jogo_mobile/Heros.dart';
import 'package:jogo_mobile/monster.dart';
import 'package:jogo_mobile/telas/Inicial.dart';

import 'TelaVitoria.dart';

class Batalha1 extends StatefulWidget {
  const Batalha1({Key? key}) : super(key: key);

  @override
  State<Batalha1> createState() => _Batalha1State();
}

class _Batalha1State extends State<Batalha1> {
  Heros hero = Heros();
  Batalha b = Batalha();
  Atributos att = Atributos();
  double atk = 0;
  var duration = Duration(milliseconds: 1);
  Monster monster = Monster(0, 0, 0, Image.asset(''));

  Widget char() {
    return Container(
        margin: const EdgeInsets.only(top: 220),
        height: 210,
        width: 170,
        child: AnimatedPadding(
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOutExpo,
          padding: EdgeInsets.only(left: atk),
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
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOutExpo,
          padding: EdgeInsets.only(left: atk),
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

  /* void ataque() {
    setState(() async {
      atk = 20;
      //atk == 0 ? atk = 50 : atk = 0;
    });
  }*/

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
              const LinearProgressIndicator(
                backgroundColor: Colors.white,
                valueColor: AlwaysStoppedAnimation(Colors.red),
                minHeight: 18,
                value: 100,
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
                  backgroundColor: Colors.red,
                  valueColor: const AlwaysStoppedAnimation(Colors.green),
                  minHeight: 18,
                  value: 100,
                ),
              ),
              Container(
                width: 350,
                margin: const EdgeInsets.all(10),
                child: LinearProgressIndicator(
                  backgroundColor: Colors.red,
                  valueColor: const AlwaysStoppedAnimation(Colors.blue),
                  minHeight: 18,
                  value: 100,
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
                      if (att.monsterHp <= 0) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TelaVitoria()));
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
                    child: Text('Skill 2'),
                    onPressed: () {
                      b.batalhar(2);
                      if (att.monsterHp <= 0) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TelaVitoria()));
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
                    child: Text('Skill 3'),
                    onPressed: () {
                      b.batalhar(3);
                      if (att.monsterHp <= 0) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TelaVitoria()));
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
