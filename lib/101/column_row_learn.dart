import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(child: Container(color: Colors.red)),
                  Expanded(child: Container(color: Colors.green)),
                  Expanded(child: Container(color: Colors.yellow)),
                  Expanded(child: Container(color: Colors.purple)),
                ],
              )),
          const Spacer(
            flex: 2,
          ),
          Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: const [Text('a'), Text('1'), Text('a2')],
              )),
          SizedBox(
            height: ProjcetContainerSizes.cardHeight,
            child: Column(
              children: const [
                Expanded(child: Text('data')),
                Expanded(child: Text('data')),
                Expanded(child: Text('data')),
                Spacer(),
                Expanded(child: Text('data')),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ProjcetContainerSizes {
  static const double cardHeight = 200;
}
