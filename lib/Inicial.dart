import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Inicial extends StatelessWidget {

Inicial();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(30),
      color: Colors.black,
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('RPG', 
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold, 
                ),),
                Text('Sem nome ainda',
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 22
                ),),
              ],  
            ),
            Column(
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    primary: Colors.black,
                    textStyle: const TextStyle(fontSize: 22),
                    backgroundColor: Colors.grey,
                  ),
                  onPressed: () {}, 
                  child: Text('Jogar',
                    style: TextStyle(
                    fontSize: 16 
                    ),)),
                    TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    primary: Colors.black,
                    textStyle: const TextStyle(fontSize: 22),
                    backgroundColor: Colors.grey,
                  ),
                  onPressed: () {}, 
                  child: Text('Jogar',
                    style: TextStyle(
                    fontSize: 16 
                    ),)),
                    TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    primary: Colors.black,
                    textStyle: const TextStyle(fontSize: 22),
                    backgroundColor: Colors.grey,
                  ),
                  onPressed: () {}, 
                  child: Text('Jogar',
                    style: TextStyle(
                    fontSize: 16 
                    ),))
              ],
            ),
          ],
        ),
      );
  }
}