// ignore_for_file: file_names

import 'dart:convert';

import 'package:http/http.dart' as http;

class Atributos {
  String nome = '';
  num hp = 0;
  num mana = 0;
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
  final _url = 'https://rpgzin-203ba-default-rtdb.firebaseio.com/atributos';

  Atributos() {
    getAtts();
  }

  Future<void> setAtts() async {
    await http.patch(Uri.parse('$_url/-N5Va2jlscz9D71hFdd2.json'),
        body: jsonEncode({
          'nome': nome,
          'hp ': hp,
          'mana': mana,
          'str': str,
          'intel': intel,
          'dex': dex,
          'endu': endu,
          'level': level,
          'classeEscolhida': classeEscolhida,
          'HeroImagem': heroImagem,
          'monsterHp': monsterHp,
          'monsterDmg': monsterDmg,
          'monsterEndu': monsterEndu,
          'monsterImagem': monsterImagem,
        }));
  }

  Future<void> getAtts() async {
    final response =
        await http.get(Uri.parse('$_url/-N5Va2jlscz9D71hFdd2.json'));
    final Map<String, dynamic> data = jsonDecode(response.body);
    nome = data['nome'];
    hp = data['hp'];
    mana = data['mana'];
    str = data['str'];
    intel = data['intel'];
    dex = data['dex'];
    endu = data['endu'];
    level = data['level'];
    classeEscolhida = data['classeEscolhida'];
    heroImagem = data['heroImagem'];
    monsterHp = data['monsterHp'];
    monsterDmg = data['monsterDmg'];
    monsterEndu = data['monsterEndu'];
  }

  void classeGuerreiro(String name) {
    nome = name;
    str = 20;
    intel = 5;
    dex = 8;
    endu = 14;
    hp = 100;
    mana = 100;
    classeEscolhida = classes.elementAt(0);
    heroImagem = '';
    monsterHp = 0;
    monsterDmg = 0;
    monsterEndu = 0;
    monsterImagem = '';
    setAtts();
  }

  void classeMago(String name) {
    nome = name;
    intel = 20;
    str = 5;
    dex = 11;
    endu = 5;
    hp = 100;
    mana = 100;
    classeEscolhida = classes.elementAt(1);
    heroImagem = '';
    monsterHp = 0;
    monsterDmg = 0;
    monsterEndu = 0;
    monsterImagem = '';
    setAtts();
  }

  void classeRogue(String name) {
    nome = name;
    dex = 20;
    intel = 12;
    str = 10;
    endu = 8;
    hp = 100;
    mana = 100;
    classeEscolhida = classes.elementAt(2);
    heroImagem = '';
    monsterHp = 0;
    monsterDmg = 0;
    monsterEndu = 0;
    monsterImagem = '';
    setAtts();
  }

  Future<void> setMonster() async {
    await http.patch(Uri.parse('$_url/-N5Va2jlscz9D71hFdd2.json'),
        body: jsonEncode({
          'monsterHp': monsterHp,
          'monsterDmg': monsterDmg,
          'monsterEndu': monsterEndu,
          'monsterImagem': monsterImagem,
        }));
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
