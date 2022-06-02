import 'dart:core';
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
  List classe = ['Guerreiro', 'Mago', 'Rogue'];

  Heros();

  void escolhaClasse(var classe) {
    if (this.classe.elementAt(0) == classe) {
      str = 20;
      intel = 5;
      dex = 8;
      endu = 14;
      hp = 100;
      mana = 100;
    }
    if (this.classe.elementAt(1) == classe) {
      intel = 20;
      str = 5;
      dex = 11;
      endu = 5;
      hp = 100;
      mana = 100;
    }
    if (this.classe.elementAt(2) == classe) {
      dex = 20;
      intel = 12;
      str = 10;
      endu = 8;
      hp = 100;
      mana = 100;
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

  bool batalha() {
    Dados dado = new Dados();
    bool result = true;
    bool empate = false;

    dado.heroi = dado.rowD20();
    dado.monstro = dado.rowD20();

    if (dado.heroi > dado.monstro) {
      result = true;
    } else if (dado.heroi < dado.monstro) {
      result = false;
    } else {
      empate = true;
    }
    return result;
  }
}
