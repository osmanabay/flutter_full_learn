import 'package:flutter/material.dart';

class StaltessLearn extends StatelessWidget {
  const StaltessLearn({super.key});

  final String text2 ='Osman';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TitleTextWidget(
            text: text2,
          ),
          const TitleTextWidget(
            text: 'osman2',
          ),
          const TitleTextWidget(
            text: 'osman3',
          ),
          const TitleTextWidget(
            text: 'osman4',
          ),
          const _Customcontainer(),
          _emptyBox()
        ],
      ),
    );
  }

  SizedBox _emptyBox() => const SizedBox(height: 10);
}

class _Customcontainer extends StatelessWidget {
  const _Customcontainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.red),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.displaySmall);
  }
}
