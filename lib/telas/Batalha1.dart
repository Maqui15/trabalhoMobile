import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jogo_mobile/Heros.dart';

class Batalha1 extends StatefulWidget {
  const Batalha1({Key? key}) : super(key: key);

  @override
  State<Batalha1> createState() => _Batalha1State();
}

class _Batalha1State extends State<Batalha1> {

   Heros hero = Heros();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      child: Column(children: [
        Container(
          padding: EdgeInsets.only(right: 30, left: 30, top: 50, bottom: 10),
          height: 400,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("lib/images/cenario.jpeg"),
                  fit: BoxFit.cover)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(right: 70, top: 170),
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
                margin: EdgeInsets.only(left: 70, top: 170),
                child: Row(
                  children: [
                    Image.asset(
                      "lib/images/monstro.gif",
                      width: 150,
                      height: 150,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        //Menu de Skills e status
        Container(
          width: double.infinity,
          color: Colors.black,
          height: 250,
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: double.infinity,
                    height: 50,
                    child: Column(
                      children: [
                        LinearProgressIndicator(
                          backgroundColor: Colors.redAccent,
                          valueColor: AlwaysStoppedAnimation(Colors.green),
                          minHeight: 20,
                        ),
                        LinearProgressIndicator(
                          backgroundColor: Colors.redAccent,
                          valueColor: AlwaysStoppedAnimation(Colors.green),
                          minHeight: 20,
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.all(10.0),
                              primary: Colors.black,
                              textStyle: const TextStyle(fontSize: 14),
                              backgroundColor:
                                  const Color.fromARGB(120, 158, 158, 158),
                            ),
                            onPressed: () {
                              hero.skillsGuerreiro(1);
                            },
                            child: Text('Teste')),
                        TextButton(
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.all(10.0),
                              primary: Colors.black,
                              textStyle: const TextStyle(fontSize: 14),
                              backgroundColor:
                                  const Color.fromARGB(120, 158, 158, 158),
                            ),
                            onPressed: () {
                              hero.skillsGuerreiro(2);
                            },
                            child: Text('Teste')),
                        TextButton(
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.all(10.0),
                              primary: Colors.black,
                              textStyle: const TextStyle(fontSize: 14),
                              backgroundColor:
                                  const Color.fromARGB(120, 158, 158, 158),
                            ),
                            onPressed: () {
                              hero.skillsGuerreiro(3);
                            },
                            child: Text('Teste')),
                      ],
                    ),
                  )
                ],
              ),
              Column()
            ],
          ),
        ),
      ]),
    ));
  }
}
