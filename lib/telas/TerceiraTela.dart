import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:jogo_mobile/telas/EscolhaDaClasse.dart';

class TerceiraTela extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.all(16),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(92, 158, 158, 158)
              ),
              onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EscolhaDeClasse()),
              );
              }, 
              child: Text('Proximo',
              style: TextStyle(color: Color.fromARGB(167, 255, 153, 0),
              fontWeight: FontWeight.bold,
              fontSize: 16),)),
          )

      ]),
    );
  }
}