// ignore_for_file: prefer_typing_uninitialized_variables, file_names
import 'dart:core';

import 'package:jogo_mobile/Atributos.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Heros {
  Heros();

  Atributos att = Atributos();

  int skillsGuerreiro(int skill) {
    int dano = 0;
    for (var i = 0; i <= att.str; i += 3) {
      dano += 1;
      att.hp += 7;
    }
    if (skill == 1) {
      dano += 16;
    }
    if (skill == 2) {
      dano += 21;
      att.mana -= 6;
    }
    if (skill == 3) {
      dano += 30;
      att.mana -= 20;
    }

    return dano;
  }

  int skillsMago(int skill) {
    int dano = 0;
    for (var i = 0; i <= att.intel; i += 2) {
      dano += 1;
    }
    if (skill == 1) {
      dano += 10;
      att.mana += 5;
    }
    if (skill == 2) {
      dano += 30;
      att.mana -= 10;
    }
    if (skill == 3) {
      dano += 45;
      att.mana -= 20;
    }
    return dano;
  }

  int skillsRogue(int skill) {
    int dano = 0;
    for (var i = 0; i <= att.dex; i += 1) {
      dano += 1;
      att.hp += 5;
    }
    if (skill == 1) {
      dano += 19;
    }
    if (skill == 2) {
      dano += 23;
      att.mana -= 8;
    }
    if (skill == 3) {
      dano += 35;
      att.mana -= 20;
    }
    return dano;
  }

  void levelUp(int status) {
    att.level += 1;
    if (status == 1) {
      att.str += 3;
    }
    if (status == 2) {
      att.intel += 3;
    }
    if (status == 3) {
      att.dex += 3;
    }
    if (status == 4) {
      att.endu += 3;
    }
    att.hp += 10;
    att.mana += 5;
  }
}
