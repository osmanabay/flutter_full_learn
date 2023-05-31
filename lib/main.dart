import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '101/card_learn.dart';
import '101/color_learn.dart';
import '101/image_learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        // ignore: deprecated_member_use
        errorColor: ColorsItems.sulu,
          appBarTheme: const AppBarTheme(
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: Colors.transparent,
        elevation: 0,
      )),
      home: const ImageLearn(),
    );
  }
}
