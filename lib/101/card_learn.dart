import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            margin: ProjectMargins.cardMargin,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: const SizedBox(
              height: 100,
              width: 300,
              child: Center(child: Text('Ali')),
            ),
          ),
          Card(
              // color: Theme.of(context).colorScheme.error,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: const SizedBox(
                height: 100,
                width: 300,
                child: Center(child: Text('Ali')),
              )),
          _CustomCard(
            child: const SizedBox(
              height: 100,
              width: 300,
              child: Center(child: Text('Ali')),
            ),
          )
        ],
      ),
    );
  }
}

class _CustomCard extends StatelessWidget {
  _CustomCard({
    required this.child,
  });

  final Widget child;
  final  roundedRectangleBorder = RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: ProjectMargins.cardMargin,
      shape: roundedRectangleBorder,
      child: child,
    );
  }
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(10);
  static final  roundedRectangleBorder = RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
}
