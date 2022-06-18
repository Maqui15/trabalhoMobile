import 'dart:core';
import 'dart:io';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:jogo_mobile/monster.dart';

import 'dados.dart';

class Heros {
  var nome = '';
  var hp;
  var mana;
  var str;
  var intel;
  var dex;
  var endu;
  var level = 1;
  var classeEscolhida;
  List classes = ['Guerreiro', 'Mago', 'Rogue'];

  Heros();

  Monster monster = Monster(0, 0, 0, Image.asset(''));

  void escolhaClasse(var classe) {
    if (this.classes.elementAt(0) == classe) {
      str = 20;
      intel = 5;
      dex = 8;
      endu = 14;
      hp = 100;
      mana = 100;
      classeEscolhida = 'Guerreiro';
    }
    if (this.classes.elementAt(1) == classe) {
      intel = 20;
      str = 5;
      dex = 11;
      endu = 5;
      hp = 100;
      mana = 100;
      classeEscolhida = 'Mago';
    }
    if (this.classes.elementAt(2) == classe) {
      dex = 20;
      intel = 12;
      str = 10;
      endu = 8;
      hp = 100;
      mana = 100;
      classeEscolhida = 'Rogue';
    }
  }

  int skillsGuerreiro(int skill) {
    int dano = 0;
    for (var i = 0; i <= str; i += 3) {
      dano += 1;
      hp += 7;
    }
    if (skill == 1) {
      dano += 16;
    }
    if (skill == 2) {
      dano += 21;
      mana -= 6;
    }
    if (skill == 3) {
      dano += 30;
      mana -= 20;
    }

    return dano;
  }

  int skillsMago(int skill) {
    int dano = 0;
    for (var i = 0; i <= intel; i += 2) {
      dano += 1;
    }
    if (skill == 1) {
      dano += 10;
      mana += 5;
    }
    if (skill == 2) {
      dano += 30;
      mana -= 10;
    }
    if (skill == 3) {
      dano += 45;
      mana -= 20;
    }
    return dano;
  }

  int skillsRogue(int skill) {
    int dano = 0;
    for (var i = 0; i <= dex; i += 1) {
      dano += 1;
      hp += 5;
    }
    if (skill == 1) {
      dano += 19;
    }
    if (skill == 2) {
      dano += 23;
      mana -= 8;
    }
    if (skill == 3) {
      dano += 35;
      mana -= 20;
    }
    return dano;
  }

  void levelUp(int status) {
    this.level += 1;
    if (status == 1) {
      str += 3;
    }
    if (status == 2) {
      intel += 3;
    }
    if (status == 3) {
      dex += 3;
    }
    if (status == 4) {
      endu += 3;
    }
    hp += 10;
    mana += 5;
  }

  bool confronto() {
    Dados dado = Dados();
    bool result = true;
    var dadoDefesa;

    var dadoAtaque = dado.rowD20();
    if (classeEscolhida == 'Rogue') {
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
    var dmgH;
    var duration = Duration(seconds: 3);
    switch (classeEscolhida) {
      case 'Guerreiro':
        dmgH = skillsGuerreiro(skillH);
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
    if (confronto() == true) {
      monster.hp -= dmgH * (monster.endu / 100);
    } else {
      null;
    }
    sleep(duration);
    monster.skilsMonster(Random().nextInt(1));
    if (confronto() == true) {
      hp -= monster.dmg * (endu / 100);
    } else {
      null;
    }
  }
}
