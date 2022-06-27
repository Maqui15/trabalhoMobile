// ignore_for_file: file_names, unused_import

import 'package:flutter/material.dart';
import 'package:jogo_mobile/telas/Quartatela.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class TerceiraTela extends StatelessWidget {
  const TerceiraTela({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("lib/images/caverna_marcada.jpeg"),
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
                                  builder: (context) => const QuartaTela()),
                            );
                          },
                          child: (AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText(
                                'pegaram suas bicicletas e foram ao local marcado, para juntos irem para a caverna onde iriam realizar o final de semana perfeito. Está caverna iria dar o ambiente perfeito!',
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
                                builder: (context) => const QuartaTela()),
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
