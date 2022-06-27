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
              image: AssetImage("lib/images/crianca_bicicleta.gif"),
              fit: BoxFit.cover)),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      margin: const EdgeInsets.all(16),
                      width: 370,
                      child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(92, 158, 158, 158)),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const TerceiraTela()),
                            );
                          },
                          child: (AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText(
                                'E chegou o final de semana que os amigos tanto esperavam, era tarde de sexta-feira inicio das férias de verão. E as crianças iriam jogar a Dunger que passaram aproximadamente 2 meses criando!',
                                textStyle: const TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.yellow,
                                ),
                                speed: const Duration(milliseconds: 150),
                              ),
                            ],
                            totalRepeatCount: 4,
                            pause: const Duration(milliseconds: 75),
                            displayFullTextOnTap: true,
                            stopPauseOnTap: true,
                          )))),
                  Container(
                    margin: EdgeInsets.all(30),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TerceiraTela()),
                          );
                        },
                        child: Text('Proximo')),
                  )
                ],
              ),
            ),
          ]),
    ));
  }
}
