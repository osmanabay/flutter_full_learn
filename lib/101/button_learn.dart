import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        TextButton(
          onPressed: () {},
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.green;
            }

            return Colors.white;
          })),
          child: Text('save', style: Theme.of(context).textTheme.titleMedium),
        ),
        const ElevatedButton(onPressed: null, child: Text('data')),
        IconButton(onPressed: () {}, icon: const Icon(Icons.abc_rounded)),
        FloatingActionButton(
            onPressed: () {
              // servise istek at
              // sayfanın rengini düzenle
            },
            child: const Icon(Icons.add)),
        OutlinedButton(
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: const EdgeInsets.all(10),
                shape: const CircleBorder()),
            onPressed: () {},
            child: const Text('data')),
            OutlinedButton.icon(onPressed: (){}, icon: const Icon(Icons.abc), label: const Text('data')),
        InkWell(onTap: () {}, child: const Text('custom')),
        Container(
          height: 200,
          color: Colors.white,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.black, 
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))
          )),
          onPressed: (){}, 
          child: Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20, left: 40, right: 40),
            child: Text(
              'Placa Bid',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ))
      ]),
    );
  }
}

// Borders
// CircleBorder(), RoundedRectangleBorder()