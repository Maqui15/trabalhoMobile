import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Telaescolha extends StatelessWidget {
  Telaescolha({Key? key}) : super(key: key);

  var texto = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: 900,
        padding: EdgeInsets.only(left: 25, right: 25, top: 70, bottom: 50),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("lib/images/cenario.jpeg"),
                fit: BoxFit.cover)),
        child: Column(children: [
          Container(
            width: double.infinity,
            height: 350,
            color: Colors.black,
            padding: EdgeInsets.all(20),
            child: Column(
              children: [Text(texto)],
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(30),
                    child: TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.black,
                          textStyle: const TextStyle(fontSize: 14),
                          backgroundColor:
                              const Color.fromARGB(120, 235, 233, 233),
                        ),
                        onPressed: () {},
                        child: Text('Opção 1'))),
                Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(30),
                    child: TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.black,
                          textStyle: const TextStyle(fontSize: 14),
                          backgroundColor:
                              const Color.fromARGB(120, 235, 233, 233),
                        ),
                        onPressed: () {},
                        child: Text('Opção 1'))),
                Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(30),
                    child: TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.black,
                          textStyle: const TextStyle(fontSize: 14),
                          backgroundColor:
                              const Color.fromARGB(120, 235, 233, 233),
                        ),
                        onPressed: () {},
                        child: Text('Opção 1'))),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
