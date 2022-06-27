import 'dart:math';
import 'package:jogo_mobile/Atributos.dart';
import 'dados.dart';

class Trap {
  Dados dado = Dados();
  Atributos att = Atributos();
  Trap();

  List texto = [
    'Você vê um artefato ao lado de uma poça com agua muito brilhante\n \n \n \n Opção 1: Igonorar e passar direto\n \n Opção 2: Apenas beber da água\n \n Opção 3: Pegar o artefáto, mas é arriscado',
    'Você vê uma runa com uma aura muito poderosa na parede da caverna\n \n \n \n Opção 1: Igonorar e passar direto\n \n Opção 2: Tocar na runa\n \n Opção 3: Absorver o poder da runa, mas é arriscado',
    'Você vê uma pequena criatura humanoide que parece um clerigo limpando uma gema que emana uma estranha aura\n \n \n \n Opção 1: Igonorar e passar direto\n \n Opção 2: Se aproximar para tentar se comunicar\n \n Opção 3: Roubar a gema, mas é arriscado',
    'Você vê a estatua de uma deusa segurando artefato em forma de cruz, mas sente que esta sendo observado\n \n \n \n Opção 1: Igonorar e passar direto\n \n Opção 2: Se ajoelhar e rezar\n \n Opção 3: Tentar pegar o artefato, mas é arriscado',
  ];

  String textoRPG() {
    String txt = texto.elementAt(Random().nextInt(3));
    return txt;
  }

  String escolha(int opcao) {
    att.getAtts();
    String texto = '';
    int result = dado.rowD20();
    switch (opcao) {
      case 1:
        null;
        texto = 'Você ignorou e foi para a proxima área';
        break;
      case 2:
        if (result > 8) {
          att.hp += 100;
          att.mana += 100;
          texto = 'Você foi abençoado e ganhou 100 de HP e Mana';
        } else {
          att.hp -= 30;
          att.mana -= 30;
          texto = 'Era uma armadilha e você perdeu 30 de HP e Mana';
        }
        break;
      case 3:
        if (result >= 15) {
          switch (att.classeEscolhida) {
            case 'Guerreiro':
              att.str += 15;
              att.hp += 50;
              att.mana += 50;
              att.endu += 5;
              texto =
                  'Ganhou um BUFF poderoso, recebeu 15 de força e 5 de resistencia além de ter sido restaurado';
              break;
            case 'Mago':
              att.intel += 15;
              att.hp += 50;
              att.mana += 50;
              att.endu += 5;
              texto =
                  'Ganhou um BUFF poderoso, recebeu 15 de inteligencia e 5 de resistencia além de ter sido restaurado';
              break;
            case 'Rogue':
              att.dex += 15;
              att.hp += 50;
              att.mana += 50;
              att.endu += 5;
              texto =
                  'Ganhou um BUFF poderoso, recebeu 15 de destreza e 5 de resistencia além de ter sido restaurado';
              break;
            default:
          }
        } else {
          if (result < 15 && result >= 6) {
            att.endu = 0;
            texto = 'Deu merda!';
          } else {
            att.hp = 0;
            texto = 'Você teve uma morte horrivel!';
          }
        }
        break;
      default:
        null;
    }
    att.setHero();
    return texto;
  }
}
