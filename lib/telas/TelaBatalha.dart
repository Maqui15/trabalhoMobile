// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:jogo_mobile/Batalha.dart';
import 'package:jogo_mobile/Heros.dart';

class Batalha1 extends StatefulWidget {
  const Batalha1({Key? key}) : super(key: key);

  @override
  State<Batalha1> createState() => _Batalha1State();
}

class _Batalha1State extends State<Batalha1> {
  Heros hero = Heros();
  Batalha b = Batalha();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: double.infinity,
      child: Column(children: [
        Container(
          padding:
              const EdgeInsets.only(right: 30, left: 30, top: 50, bottom: 10),
          height: 300,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("lib/images/cenario.jpeg"),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              const LinearProgressIndicator(
                backgroundColor: Colors.red,
                valueColor: AlwaysStoppedAnimation(Colors.blue),
                minHeight: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 70, top: 170),
                    child: Row(
                      children: [
                        Image.asset(
                          "lib/images/boy.gif",
                          width: 150,
                          height: 150,
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 70, top: 170),
                    child: Row(
                      children: [
                        Image.asset(
                          "lib/images/monstro.gif",
                          width: 150,
                          height: 150,
                        ),
                      ],
                    ),
                  )
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
                width: 450,
                margin: const EdgeInsets.only(top: 10),
                child: LinearProgressIndicator(
                  backgroundColor: Colors.red,
                  valueColor: const AlwaysStoppedAnimation(Colors.green),
                  minHeight: 18,
                  value: hero.hp,
                ),
              ),
              Container(
                width: 450,
                margin: const EdgeInsets.all(10),
                child: LinearProgressIndicator(
                  backgroundColor: Colors.red,
                  valueColor: const AlwaysStoppedAnimation(Colors.blue),
                  minHeight: 18,
                  value: hero.mana,
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
                      print(hero.hp);
                    },
                    child: const Text('Teste')),
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(left: 50, right: 50, bottom: 20),
                height: 35,
                child: TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(10.0),
                      primary: Colors.black,
                      textStyle: const TextStyle(fontSize: 14),
                      backgroundColor: const Color.fromARGB(120, 158, 158, 158),
                    ),
                    onPressed: () {
                      hero.skillsGuerreiro(2);
                    },
                    child: const Text('Teste')),
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(left: 50, right: 50, bottom: 20),
                height: 35,
                child: TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(10.0),
                      primary: Colors.black,
                      textStyle: const TextStyle(fontSize: 14),
                      backgroundColor: const Color.fromARGB(120, 158, 158, 158),
                    ),
                    onPressed: () {
                      hero.skillsGuerreiro(3);
                    },
                    child: const Text('Teste')),
              )
            ],
          ),
        ),
      ]),
    ));
  }
}
