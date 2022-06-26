// ignore_for_file: avoid_print, file_names, prefer_typing_uninitialized_variables, unused_local_variable
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jogo_mobile/Atributos.dart';
import 'package:jogo_mobile/dados.dart';
import 'package:jogo_mobile/monster.dart';
import 'package:jogo_mobile/telas/TelaVitoria.dart';

class HeroBatalha {
  Dados dado = Dados();
  Monster monster = Monster(0, 0, 0, '');
  HeroBatalha();
  Atributos att = Atributos();
  TelaVitoria tv = const TelaVitoria();

  List<Monster> monstroEncouter = [
    Monster(150, 16, 26, 'monstro.gif'),
    Monster(150, 16, 26, 'monstro.gif'),
    Monster(150, 16, 26, 'monstro.gif'),
    Monster(150, 16, 26, 'monstro.gif'),
    Monster(150, 16, 26, 'monstro.gif'),
    Monster(150, 16, 26, 'monstro.gif'),
    Monster(150, 16, 26, 'monstro.gif'),
    Monster(150, 16, 26, 'monstro.gif'),
    Monster(150, 16, 26, 'monstro.gif'),
    Monster(150, 16, 26, 'monstro.gif'),
    Monster(150, 16, 26, 'monstro.gif'),
    Monster(150, 16, 26, 'monstro.gif'),
    Monster(150, 16, 26, 'monstro.gif'),
    Monster(150, 16, 26, 'monstro.gif'),
    Monster(150, 16, 26, 'monstro.gif'),
    Monster(150, 16, 26, 'monstro.gif'),
    Monster(150, 16, 26, 'monstro.gif'),
    Monster(150, 16, 26, 'monstro.gif'),
    Monster(150, 16, 26, 'monstro.gif'),
    Monster(150, 16, 26, 'monstro.gif'),
  ];

  bool confronto() {
    Dados dado = Dados();
    bool result = true;
    int dadoDefesa = 0;

    int dadoAtaque = dado.rowD20();
    if (att.classeEscolhida == 'Rogue') {
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

  void batalhar(int skillH) async {
    att.getAtts();
    num dmgH = 0;
    switch (att.classeEscolhida) {
      case 'Guerreiro':
        dmgH = skillsGuerreiro(skillH);
        print(dmgH);
        print(att.hp);
        break;
      case 'Mago':
        dmgH = skillsMago(skillH);
        break;
      case 'Rogue':
        dmgH = skillsRogue(skillH);
        break;
      default:
        null;
    }
    if (confronto()) {
      att.monsterHp -= dmgH * (att.monsterEndu / 100);
    } else {
      null;
    }
  }

  void monsterATK() {
    monster.skilsMonster(Random().nextInt(1));
    if (confronto()) {
      att.hp -= att.monsterDmg * (att.endu / 100);
    } else {
      null;
    }
  }

  num skillsGuerreiro(int skill) {
    att.getAtts();
    num dano = 0;
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

  num skillsMago(int skill) {
    att.getAtts();
    num dano = 0;
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

  num skillsRogue(int skill) {
    att.getAtts();
    num dano = 0;
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
    att.getAtts();
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