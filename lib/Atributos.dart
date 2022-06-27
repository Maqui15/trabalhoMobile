// ignore_for_file: file_names

import 'dart:convert';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Atributos {
  String nome = '';
  num hp = 100;
  num mana = 100;
  num str = 0;
  num intel = 0;
  num dex = 0;
  num endu = 0;
  num level = 1;
  String classeEscolhida = '';
  String heroImagem = '';
  num monsterHp = 0;
  num monsterDmg = 0;
  num monsterEndu = 0;
  String monsterImagem = '';
  List classes = ['Guerreiro', 'Mago', 'Rogue'];
  List monstros = [
    'https://drive.google.com/uc?export=view&id=1aDSDukTGUuZWC3gOmK86T-FPrlbFMSsr',
    'https://drive.google.com/uc?export=view&id=1IYetQktXGSh_hSs_vWT2zgMhDYMf9RU2',
    'https://drive.google.com/uc?export=view&id=1Zwhrjlu9bxO0DFWdv0iSnQr4vDG-lYYs',
    'https://drive.google.com/uc?export=view&id=1zG8KnZCOTviJROdRCM8sKbB5s5xMYWKZ',
    'https://drive.google.com/uc?export=view&id=15LF4hw65zvWgo348DTzBc7J3CzyWMycH',
    'https://drive.google.com/uc?export=view&id=11gOitq6-0b3roqGE5fdEtTBUEs_POP8v',
    'https://drive.google.com/uc?export=view&id=11lBMiCeBndrRW8I2A9VbddhtFCS550sJ',
    'https://drive.google.com/uc?export=view&id=1TX_wthmVSLrs7jTnIJI9--gp7NpSeKmg',
    'https://drive.google.com/uc?export=view&id=1vWP14Jq1WHG1hvqozXtOY9lq-Bxjzjs2',
    'https://drive.google.com/uc?export=view&id=178FO3bN28Rao9puKovpY9Yr27eBrii_K',
    'https://drive.google.com/uc?export=view&id=1s0qWOzKmvxWdyH7z5W-4YgabS_GXyV0h',
    'https://drive.google.com/uc?export=view&id=10CsqXP3iL73pP49M2uNwPk-G0EO5dDYv',
  ];
  final _url =
      'https://rpgzin-203ba-default-rtdb.firebaseio.com/atributos/-N5Va2jlscz9D71hFdd2.json';

  Atributos() {
    getAtts();
  }

  Future<void> setAtts() async {
    await http.patch(Uri.parse('$_url'),
        body: jsonEncode({
          'nome': nome,
          'hp': hp,
          'mana': mana,
          'str': str,
          'intel': intel,
          'dex': dex,
          'endu': endu,
          'level': level,
          'classeEscolhida': classeEscolhida,
          'monsterHp': monsterHp,
          'monsterDmg': monsterDmg,
          'monsterEndu': monsterEndu,
          'monsterImagem': monsterImagem,
        }));
  }

  Future<void> setHero() async {
    await http.patch(Uri.parse('$_url'),
        body: jsonEncode({
          'hp': hp,
          'mana': mana,
          'str': str,
          'intel': intel,
          'dex': dex,
          'endu': endu,
          'level': level,
        }));
  }

  Future<void> getAtts() async {
    final response = await http.get(Uri.parse('$_url'));
    Map<String, dynamic> data = jsonDecode(response.body);
    nome = data['nome'];
    hp = data['hp'];
    mana = data['mana'];
    str = data['str'];
    intel = data['intel'];
    dex = data['dex'];
    endu = data['endu'];
    level = data['level'];
    classeEscolhida = data['classeEscolhida'];
    monsterHp = data['monsterHp'];
    monsterDmg = data['monsterDmg'];
    monsterEndu = data['monsterEndu'];
  }

  void classeGuerreiro(String name) async {
    nome = name;
    str = 20;
    intel = 5;
    dex = 8;
    endu = 14;
    hp = 100;
    mana = 100;
    classeEscolhida = classes.elementAt(0);
    heroImagem = 'lib/images/mago.png';
    await setAtts();
  }

  void classeMago(String name) async {
    nome = name;
    intel = 20;
    str = 5;
    dex = 11;
    endu = 5;
    hp = 100;
    mana = 100;
    classeEscolhida = classes.elementAt(1);
    heroImagem = 'lib/images/mago.png';
    await setAtts();
  }

  void reload() async {
    await setAtts();
    await getAtts();
  }

  void classeRogue(String name) async {
    nome = name;
    dex = 20;
    intel = 12;
    str = 10;
    endu = 8;
    hp = 100;
    mana = 100;
    classeEscolhida = classes.elementAt(2);
    heroImagem = 'lib/images/mago.png';
    // 'https://drive.google.com/uc?export=view&id=10eXeHcbLj3JPBGncVW4TfaYDmx4nWL56';
    await setAtts();
  }

  Future<void> setMonster() async {
    await http.patch(Uri.parse('$_url'),
        body: jsonEncode({
          'monsterHp': monsterHp,
          'monsterDmg': monsterDmg,
          'monsterEndu': monsterEndu,
          'monsterImagem': monsterImagem,
        }));
  }

  void generateMonster() {
    monsterHp = Random().nextInt(200);
    monsterEndu = Random().nextInt(20);
    monsterDmg = Random().nextInt(50);
    monsterImagem = monstros.elementAt(Random().nextInt(11));
    for (var i = 50; i > monsterHp;) {
      monsterHp = Random().nextInt(200);
    }
    setMonster();
  }

  /*final monstros = List monstroEncouter; = [
    [
      Atributos().monsterDmg = 10,
      Atributos().monsterHp = 100,
      Atributos().monsterEndu = 10,
      Atributos().monsterImagem = ''
    ],
    [
      Atributos().monsterDmg = 10,
      Atributos().monsterHp = 100,
      Atributos().monsterEndu = 10,
      Atributos().monsterImagem = ''
    ],
    [
      Atributos().monsterDmg = 10,
      Atributos().monsterHp = 100,
      Atributos().monsterEndu = 10,
      Atributos().monsterImagem = ''
    ]
  ];*/

  /*Atributos.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    hp = json['hp'];
    mana = json['mana'];
    str = json['str'];
    intel = json['intel'];
    dex = json['dex'];
    endu = json['endu'];
    level = json['level'];
    classeEscolhida = json['classeEscolhida'];
    monsterHp = json['monsterHp'];
    monsterDmg = json['monsterDmg'];
    monsterEndu = json['monsterEndu'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome;
    data['hp'] = this.hp;
    data['mana'] = this.mana;
    data['str'] = this.str;
    data['intel'] = this.intel;
    data['dex'] = this.dex;
    data['endu'] = this.endu;
    data['level'] = this.level;
    data['classeEscolhida'] = this.classeEscolhida;
    data['monsterHp'] = this.monsterHp;
    data['monsterDmg'] = this.monsterDmg;
    data['monsterEndu'] = this.monsterEndu;
    return data;
  }*/

}
