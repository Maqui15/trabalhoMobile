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
      child: Column(
        children: [
          Column(
            children: [
              Row()
            ],
          ),
          //Menu de Skills e status
          Column(
            children: [
              Row(),
              Row()
            ],
          ),
      ]),
    ) 
    ); 
  }
}