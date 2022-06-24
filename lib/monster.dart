// ignore_for_file: prefer_typing_uninitialized_variables, prefer_initializing_formals

import 'dart:core';
import 'package:flutter/material.dart';

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
