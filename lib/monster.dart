import 'dart:core';
import 'package:flutter/material.dart';

import 'dados.dart';

class Monster {
  var hp;
  var dmg;
  var endu;
  var imagem;

  Monster(var hp, var dmg, var endu, var image) {
    this.hp = hp;
    this.dmg = dmg;
    this.endu = endu;
    this.imagem = image;
  }

  List<Monster> monstroEncouter = [
    Monster(100, 20, 16, Image.asset('m.png')),
    Monster(150, 16, 26, Image.asset('monstro.gif'))
  ];

  int skilsMonster(var skill) {
    if (skill == 0) {
      dmg += 5;
    }
    if (skill == 1) {
      dmg += 12;
    }
    return dmg;
  }
}
