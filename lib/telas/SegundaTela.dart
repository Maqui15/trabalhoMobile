// ignore_for_file: file_names, unused_import

import 'package:flutter/material.dart';
import 'package:jogo_mobile/telas/TerceiraTela.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SegundaTela extends StatelessWidget {
  const SegundaTela({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("lib/images/menu.jpeg"), fit: BoxFit.cover)),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: const EdgeInsets.all(16),
              child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(92, 158, 158, 158)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TerceiraTela()),
                    );
                  },
                  child: const Text(
                    'Proximo',
                    style: TextStyle(
                        color: Color.fromARGB(167, 255, 153, 0),
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  )),
            )
          ]),
    ));
  }
}
