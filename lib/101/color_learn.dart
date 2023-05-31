import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  const ColorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Theme.of(context).colorScheme.error,
        child: const Text('data'),
      ),
    );
  }
}

class ColorsItems {
  static Color porchase = const Color(0xffEDBF61);
  static Color sulu = const Color.fromRGBO(198, 237, 97, 1);
}