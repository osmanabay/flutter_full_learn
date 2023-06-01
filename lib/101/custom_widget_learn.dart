import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({super.key});

  final String title = 'Food';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: CustomFoodButton(title: title, onPressed: () {})),
            ),
          ),
          const SizedBox(height: 100),
          CustomFoodButton(
            title: title,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class CustomFoodButton extends StatelessWidget
    with _ColorUtility, _PaddingUtility {
  CustomFoodButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  final String title;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: redColor, shape: const StadiumBorder()),
      onPressed: onPressed,
      child: Padding(
        padding: normal2xPadding,
        child: Text(title,
            style: Theme.of(context)
                .textTheme
                .titleSmall
                ?.copyWith(color: whiteColor, fontWeight: FontWeight.bold)),
      ),
    );
  }
}

class _ColorUtility {
  final Color redColor = Colors.red;
  final Color whiteColor = Colors.white;
}

class _PaddingUtility {
  final EdgeInsets normalPadding = const EdgeInsets.all(8.0);
  final EdgeInsets normal2xPadding = const EdgeInsets.all(16.0);
}