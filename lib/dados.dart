import 'dart:math';

class Dados {
  var d20;
  var d6;
  var d12;

  Dados() {
    d20 = rowD20();
    d6 = rowD6();
    d12 = rowD12();
  }

  int rowD20() {
    d20 = Random().nextInt(20) - 1;
    return d20;
  }

  int rowD6() {
    d6 = Random().nextInt(6) - 1;
    return d6;
  }

  int rowD12() {
    d12 = Random().nextInt(12) - 1;
    return d12;
  }
}
