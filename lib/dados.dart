

import 'dart:math';

import 'package:flutter/material.dart';

class Dados extends StatefulWidget{
  

  Dados();

  @override
  State<Dados> createState() => _DadosState();
}

class _DadosState extends State<Dados> {
  var d20;

  var d6;

  var d12;

  Random rowD20(){
    d20 = Random(20);
    return this.d20;
  }

    Random rowD6(){
    d6 = Random(6);
    return this.d6;
  }

    Random rowD12(){
      d12 = Random(12);
    return this.d12;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text('role'),
        onPressed: rowD20,  
      ) 
    );
    
  }
}