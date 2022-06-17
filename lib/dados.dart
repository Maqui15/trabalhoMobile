import 'dart:math';

class Dados{

  var d20 = 0;
  var d6 = 0;
  var d12 = 0;
  var heroi = 0;
  var monstro = 0;

  Dados(){
    d20 = 0;
    d6 = 0;
    d12 = 0;
    heroi = 0;
    monstro = 0;
  }

  int rowD20(){
    d20 = Random().nextInt(20);
    return d20;
  }

  int rowD6(){
    d6 = Random().nextInt(6);
    return d6;
  }

  int rowD12(){
      d12 = Random().nextInt(12);
    return d12;
  }  
}