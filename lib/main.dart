import 'package:flutter/material.dart';
import 'package:jogo_mobile/telas/Inicial.dart';

main() => runApp(const RPG());

class RPG extends StatelessWidget {
  const RPG({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Home());
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Inicial();
  }
}
