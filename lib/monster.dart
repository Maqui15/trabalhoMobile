// ignore_for_file: prefer_typing_uninitialized_variables, prefer_initializing_formals

import 'dart:core';

import 'package:jogo_mobile/Atributos.dart';

class Monster {
  Atributos att = Atributos();

  Monster(var hp, var dmg, var endu, var image) {
    att.monsterHp = hp;
    att.monsterDmg = dmg;
    att.monsterEndu = endu;
    att.monsterImagem = image;
  }

  int skilsMonster(var skill) {
    if (skill == 0) {
      att.monsterDmg += 5;
    }
    if (skill == 1) {
      att.monsterDmg += 12;
    }
    return att.monsterDmg;
  }
}
