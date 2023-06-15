import 'package:flutter/material.dart';

class NavigateDetailLearnDart extends StatefulWidget {
  const NavigateDetailLearnDart({super.key, this.isOkey = false});
  final bool isOkey;
  @override
  State<NavigateDetailLearnDart> createState() => _NavigateDetailLearnDartState();
}

class _NavigateDetailLearnDartState extends State<NavigateDetailLearnDart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: ElevatedButton.icon(
            onPressed: () {
              Navigator.of(context).pop(!widget.isOkey);
            },
            icon: Icon(
              Icons.check,
              color: widget.isOkey ? Colors.red : Colors.green,
            ),
            label: widget.isOkey ? const Text('Reddet') : const Text('Onayla'),
          ),
        ));
  }
}
