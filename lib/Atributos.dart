import 'package:shared_preferences/shared_preferences.dart';

class Atributos {
  late SharedPreferences _prefs;
  var nome;
  var hp;
  var mana;
  var str;
  var intel;
  var dex;
  var endu;
  var level = 1;
  var classeEscolhida;
  var monsterHp;
  var monsterDmg;
  var monsterEndu;
  var monsterImagem;
  List classes = ['Guerreiro', 'Mago', 'Rogue'];

  Atributos() {
    _startAtts();
  }

  _startAtts() async {
    await _startAtributos();
    await _readAtrubutos();
  }

  Future<void> _startAtributos() async {
    _prefs = await SharedPreferences.getInstance();
  }

  _readAtrubutos() async {}

  void classeGuerreiro() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    str = 20;
    intel = 5;
    dex = 8;
    endu = 14;
    hp = 100;
    mana = 100;
    classeEscolhida = classes.elementAt(0);
    prefs.setInt('hp', hp);
    prefs.setInt('intel', intel);
    prefs.setInt('dex', dex);
    prefs.setInt('endu', endu);
    prefs.setInt('mana', mana);
    prefs.setInt('level', level);
    prefs.setString('classeEscolhida', classeEscolhida);
    prefs.setString('nome', nome);
  }

  void classeMago() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    intel = 20;
    str = 5;
    dex = 11;
    endu = 5;
    hp = 100;
    mana = 100;
    classeEscolhida = classes.elementAt(1);
    prefs.setInt('hp', hp);
    prefs.setInt('intel', intel);
    prefs.setInt('dex', dex);
    prefs.setInt('endu', endu);
    prefs.setInt('mana', mana);
    prefs.setInt('level', level);
    prefs.setString('classeEscolhida', classeEscolhida);
    prefs.setString('nome', nome);
  }

  void classeRogue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    dex = 20;
    intel = 12;
    str = 10;
    endu = 8;
    hp = 100;
    mana = 100;
    classeEscolhida = classes.elementAt(2);
    prefs.setInt('hp', hp);
    prefs.setInt('intel', intel);
    prefs.setInt('dex', dex);
    prefs.setInt('endu', endu);
    prefs.setInt('mana', mana);
    prefs.setInt('level', level);
    prefs.setString('classeEscolhida', classeEscolhida);
    prefs.setString('nome', nome);
  }
}
