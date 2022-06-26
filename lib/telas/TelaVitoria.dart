// ignore_for_file: file_names

import 'package:flutter/material.dart';

class TelaVitoria extends StatelessWidget {
  const TelaVitoria({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: 600,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Voltar')),
          ],
        ),
      ),
    );
  }
}
