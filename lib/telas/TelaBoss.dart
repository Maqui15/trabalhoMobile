// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../Atributos.dart';
import '../HeroBatalha.dart';
import 'Inicial.dart';

class TelaBoss extends StatefulWidget {
  const TelaBoss({Key? key}) : super(key: key);

  @override
  State<TelaBoss> createState() => _TelaBossState();
}

class _TelaBossState extends State<TelaBoss> {
  HeroBatalha b = HeroBatalha();

  Atributos att = Atributos();

  num? monsterHP;

  num? hP;

  num? mana;

  String nome = '';

  @override
  void initState() {
    super.initState();
    att.generateBoss();
    att.getAtts();
    monsterHP = att.monsterHp;
    hP = att.hp;
    mana = att.mana;
    nome = att.nome;
  }

  Widget char() {
    return Container(
        margin: const EdgeInsets.only(top: 220),
        height: 200,
        width: 150,
        child: AnimatedPadding(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOutExpo,
          padding: const EdgeInsets.only(left: 0),
          child: Row(
            children: [
              Image.network(
                att.heroImagem,
                width: 150,
                height: 200,
              )
            ],
          ),
        ));
  }

  Widget monsterChar() {
    return Container(
        margin: const EdgeInsets.only(top: 200),
        height: 230,
        width: 200,
        child: AnimatedPadding(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOutExpo,
          padding: const EdgeInsets.only(left: 0),
          child: Row(
            children: [
              Image.network(
                att.monsterImagem,
                width: 200,
                height: 230,
              )
            ],
          ),
        ));
  }

  void ataque() {
    setState(() {
      att.getAtts();
      monsterHP = att.monsterHp;
      hP = att.hp;
      mana = att.mana;
    });
  }

  Future<void> alertaWin() async {
    return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Vitória!'),
            content: Text('Acabou o joguinho ' + nome + '?'),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Inicial()));
                        },
                        child: const Text('OK')),
                  ),
                ],
              ),
            ],
          );
        });
  }

  Future<void> alertaLose() async {
    return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Derrota T_T'),
            content: const Text('Retornar para o menu'),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Inicial()));
                  },
                  child: const Text('OK')),
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
              const EdgeInsets.only(right: 10, left: 10, top: 50, bottom: 10),
          height: 516,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("lib/images/cenario.jpeg"),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              Container(
                //HP do Monstro
                color: Colors.red,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text('HP: $monsterHP')]),
              ),
              /*Container(
                height: 100,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [],
                ),
              ),*/
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
                  child: Container(
                    color: Colors.green,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text('HP: $hP')]),
                  )),
              Container(
                  width: 350,
                  margin: const EdgeInsets.all(10),
                  color: Colors.white,
                  height: 18,
                  child: Container(
                    color: Colors.blue,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text('Mana: $mana')]),
                  )),
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
                      ataque();
                      if (att.monsterHp <= 0) {
                        alertaWin();
                      } else {
                        b.monsterATK();
                        if (att.hp <= 0) {
                          alertaLose();
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
                      if (att.mana > 0) {
                        b.batalhar(2);
                        ataque();
                        if (att.monsterHp <= 0) {
                          alertaWin();
                        } else {
                          b.monsterATK();
                          if (att.hp <= 0) {
                            alertaLose();
                          }
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
                      if (att.mana > 0) {
                        b.batalhar(3);
                        ataque();
                        if (att.monsterHp <= 0) {
                          alertaWin();
                        } else {
                          b.monsterATK();
                          if (att.hp <= 0) {
                            alertaLose();
                          }
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
