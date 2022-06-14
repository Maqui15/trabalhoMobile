import 'dart:math';

class Dados{

  var d20 = 0;
  var d6 = 0;
  var d12 = 0;
  var heroi = 0;
  var monstro = 0;

  Dados(){
    this.d20 = 0;
    this.d6 = 0;
    this.d12 = 0;
    this.heroi = 0;
    this.monstro = 0;
  }

  int rowD20(){
    this.d20 = Random().nextInt(20);
    return this.d20;
  }

  int rowD6(){
    this.d6 = Random().nextInt(6);
    return this.d6;
  }

  int rowD12(){
      this.d12 = Random().nextInt(12);
    return this.d12;
  }  
}