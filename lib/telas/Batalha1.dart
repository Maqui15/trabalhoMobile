import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Batalha1 extends StatefulWidget {
  const Batalha1({Key? key}) : super(key: key);

  @override
  State<Batalha1> createState() => _Batalha1State();
}

class _Batalha1State extends State<Batalha1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      width: double.infinity,
      child: Column(children: [
        Container(
          padding: EdgeInsets.all(100),
          height: 400,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("lib/images/cenario.jpeg"),
                  fit: BoxFit.cover)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                Image.asset("lib/images/heroi.png",
                width: 100,
                height: 100,)
                ],
              ),
              Row(children: [
                Image.asset("lib/images/monstro.gif", 
                width: 100, 
                height: 100,)
              ],)
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
                            onPressed: () {},
                            child: Text('Teste')),
                        TextButton(
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.all(10.0),
                              primary: Colors.black,
                              textStyle: const TextStyle(fontSize: 14),
                              backgroundColor:
                                  const Color.fromARGB(120, 158, 158, 158),
                            ),
                            onPressed: () {},
                            child: Text('Teste')),
                        TextButton(
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.all(10.0),
                              primary: Colors.black,
                              textStyle: const TextStyle(fontSize: 14),
                              backgroundColor:
                                  const Color.fromARGB(120, 158, 158, 158),
                            ),
                            onPressed: () {},
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
