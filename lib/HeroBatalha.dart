// ignore_for_file: avoid_print, file_names, prefer_typing_uninitialized_variables, unused_local_variable
import 'dart:math';
import 'package:jogo_mobile/Atributos.dart';
import 'package:jogo_mobile/dados.dart';

class HeroBatalha {
  Dados dado = Dados();
  HeroBatalha();
  Atributos att = Atributos();

  bool confronto() {
    Dados dado = Dados();
    bool result = true;
    int dadoDefesa = 0;

    int dadoAtaque = dado.rowD20();
    if (att.classeEscolhida == 'Rogue') {
      dadoDefesa == dado.rowD12();
    } else {
      dadoDefesa = dado.rowD6();
    }
    if (dadoAtaque >= dadoDefesa) {
      result = true;
    } else if (dadoAtaque < dadoDefesa) {
      result = false;
    }
    att.dadin = dadoAtaque;
    att.setStatistics();
    return result;
  }

  void batalhar(int skillH) {
    num dmgH = 0;
    switch (att.classeEscolhida) {
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
    if (confronto()) {
      att.monsterHp -= dmgH;
      // -att.monsterEndu;
      att.dano = dmgH;
      // -att.monsterEndu;
    } else {
      null;
    }
    att.setHero();
    att.setMonster();
    att.setStatistics();
    att.getAtts();
  }

  void monsterATK() {
    skilsMonster(Random().nextInt(1));
    if (confronto()) {
      att.hp -= att.monsterDmg;
      //-att.endu;
      att.dano = att.monsterDmg;
      // -att.endu;
      att.setAtts();
      att.setStatistics();
    } else {
      null;
    }
  }

  num skillsGuerreiro(int skill) {
    num dano = 0;
    for (var i = 0; i <= att.str; i += 3) {
      dano += 2;
    }
    if (skill == 1) {
      dano += 16;
      att.hp += 7;
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
    num dano = 0;
    for (var i = 0; i <= att.intel; i += 2) {
      dano += 2;
    }
    if (skill == 1) {
      dano += 10;
      att.mana += 10;
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
    num dano = 0;
    for (var i = 0; i <= att.dex; i += 1) {
      dano += 2;
    }
    if (skill == 1) {
      dano += 19;
      att.hp += 5;
      att.mana += 5;
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

  num skilsMonster(var skill) {
    if (skill == 0) {
      att.monsterDmg += 3;
    }
    if (skill == 1) {
      att.monsterDmg += 5;
    }
    return att.monsterDmg;
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
