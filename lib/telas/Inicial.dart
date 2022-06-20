import 'package:flutter/material.dart';
import 'package:jogo_mobile/telas/SegundaTela.dart';

class Inicial extends StatelessWidget {
  Inicial();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 705,
        width: double.infinity,
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("lib/images/menu.jpeg"), fit: BoxFit.cover)),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'RPG',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Adventures',
                  style: TextStyle(color: Colors.orange, fontSize: 22),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.all(100),
                  width: 600,
                  child: TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(16.0),
                        primary: Colors.black,
                        textStyle: const TextStyle(fontSize: 22),
                        backgroundColor: Colors.grey,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SegundaTela()),
                        );
                      },
                      child: Text(
                        'Jogar',
                        style: TextStyle(fontSize: 16),
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
