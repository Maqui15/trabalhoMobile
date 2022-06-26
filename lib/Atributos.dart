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
  var level;
  var classeEscolhida;
  var monsterHp;
  var monsterDmg;
  var monsterEndu;
  var monsterImagem;
  List classes = ['Guerreiro', 'Mago', 'Rogue'];

  Atributos() {
    //_startAtts();
  }

  _startAtts() async {
    await _startAtributos();
    await _readAtrubutos();
  }

  Future<void> _startAtributos() async {
    _prefs = await SharedPreferences.getInstance();
  }

  _readAtrubutos() async {
    nome = _prefs.getString('nome');
    hp = _prefs.getInt('hp');
    mana = _prefs.getInt('mana');
    str = _prefs.getInt('str');
    intel = _prefs.getInt('intel');
    dex = _prefs.getInt('dex');
    endu = _prefs.getInt('endu');
    level = _prefs.getInt('level');
    classeEscolhida = _prefs.getString('classeEcolhida');
    monsterHp = _prefs.getInt('monsterHp');
    monsterDmg = _prefs.getInt('monsterDmg');
    monsterEndu = _prefs.getInt('monsterEndu');
  }

  void classeGuerreiro() async {
    str = 20;
    intel = 5;
    dex = 8;
    endu = 14;
    hp = 100;
    mana = 100;
    classeEscolhida = classes.elementAt(0);
    await _prefs.setInt('hp', hp);
    await _prefs.setInt('intel', intel);
    await _prefs.setInt('dex', dex);
    await _prefs.setInt('endu', endu);
    await _prefs.setInt('mana', mana);
    await _prefs.setInt('level', level);
    await _prefs.setString('classeEscolhida', classeEscolhida);
    await _prefs.setString('nome', nome);
  }

  void classeMago() async {
    intel = 20;
    str = 5;
    dex = 11;
    endu = 5;
    hp = 100;
    mana = 100;
    classeEscolhida = classes.elementAt(1);
    await _prefs.setInt('hp', hp);
    await _prefs.setInt('intel', intel);
    await _prefs.setInt('dex', dex);
    await _prefs.setInt('endu', endu);
    await _prefs.setInt('mana', mana);
    await _prefs.setInt('level', level);
    await _prefs.setString('classeEscolhida', classeEscolhida);
    await _prefs.setString('nome', nome);
  }

  void classeRogue() async {
    dex = 20;
    intel = 12;
    str = 10;
    endu = 8;
    hp = 100;
    mana = 100;
    classeEscolhida = classes.elementAt(2);
    await _prefs.setInt('hp', hp);
    await _prefs.setInt('intel', intel);
    await _prefs.setInt('dex', dex);
    await _prefs.setInt('endu', endu);
    await _prefs.setInt('mana', mana);
    await _prefs.setInt('level', level);
    await _prefs.setString('classeEscolhida', classeEscolhida);
    await _prefs.setString('nome', nome);
  }
}
