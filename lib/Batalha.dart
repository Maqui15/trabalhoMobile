// ignore_for_file: avoid_print

import 'dart:io';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:jogo_mobile/Heros.dart';
import 'package:jogo_mobile/dados.dart';
import 'package:jogo_mobile/monster.dart';

class Batalha {
  Heros hero = Heros();
  Dados dado = Dados();
  Monster monster = Monster(0, 0, 0, Image.asset(''));
  Batalha();

  List<Monster> monstroEncouter = [
    Monster(150, 16, 26, Image.asset('monstro.gif'))
  ];

  bool confronto() {
    Dados dado = Dados();
    bool result = true;
    var dadoDefesa;

    var dadoAtaque = dado.rowD20();
    if (hero.classeEscolhida == 'Rogue') {
      dadoDefesa == dado.rowD20();
    } else {
      dadoDefesa = dado.rowD12();
    }
    if (dadoAtaque >= dadoDefesa) {
      result = true;
    } else if (dadoAtaque < dadoDefesa) {
      result = false;
    }
    return result;
  }

  void batalhar(var skillH) {
    int dmgH = 0;
    var duration = const Duration(seconds: 3);
    print(hero.classeEscolhida);
    print('teste');
    print(hero.hp);
    switch (hero.classeEscolhida) {
      case 'Guerreiro':
        dmgH = hero.skillsGuerreiro(skillH);
        print(dmgH);
        break;
      case 'Mago':
        dmgH = hero.skillsMago(skillH);
        break;
      case 'Rogue':
        dmgH = hero.skillsRogue(skillH);
        break;
      default:
        null;
    }
    if (confronto() == true) {
      monster.hp -= dmgH * (monster.endu / 100);
    } else {
      null;
    }
    //sleep(duration);
    monster.skilsMonster(Random().nextInt(1));
    if (confronto() == true) {
      monster.hp -= monster.dmg * (monster.endu / 100);
    } else {
      null;
    }
  }
}
