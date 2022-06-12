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
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/cenario.jpeg"), fit: BoxFit.cover)),
      child: Column(children: [
        Column(
          children: [Row()],
        ),
        //Menu de Skills e status
        Container(
          width: double.infinity,
          color: Colors.black,
          height: 200,
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
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
