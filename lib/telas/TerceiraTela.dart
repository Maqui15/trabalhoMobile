// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:jogo_mobile/telas/EscolhaDeClasse.dart';

class TerceiraTela extends StatelessWidget {
  const TerceiraTela({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      color: Colors.black,
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
                          builder: (context) => const EscolhaDeClasse()),
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
