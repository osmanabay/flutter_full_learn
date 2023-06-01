import 'package:flutter/material.dart';

import '../core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: const RandomImage(),
                dense: true,
                minVerticalPadding: 0,
                // contentPadding: EdgeInsets.zero,
                onTap: () {},
                subtitle: const Text('How do you use your card'),
                leading: Container(
                    height: 200,
                    width: 30,
                    alignment: Alignment.topCenter,
                    child: const Icon(Icons.money)),
                trailing: Container(
                    width: 20,
                    color: Colors.red,
                    child: const SizedBox(
                        width: 20, child: Icon(Icons.chevron_right))),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
