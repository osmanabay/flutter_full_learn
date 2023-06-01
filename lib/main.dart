import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '101/color_learn.dart';
import '101/text_field_learn.dart';

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
          listTileTheme: const ListTileThemeData(contentPadding: EdgeInsets.zero),
          progressIndicatorTheme: const ProgressIndicatorThemeData(color: Colors.white),
          // ignore: deprecated_member_use
          errorColor: ColorsItems.sulu,
          textSelectionTheme: const TextSelectionThemeData(
              selectionColor: Colors.red, cursorColor: Colors.green, selectionHandleColor: Colors.black),
          inputDecorationTheme: const InputDecorationTheme(
              filled: true,
              fillColor: Colors.white,
              iconColor: Colors.red,
              labelStyle: TextStyle(color: Colors.lime),
              border: OutlineInputBorder(),
              floatingLabelStyle: TextStyle(color: Colors.red, fontSize: 24, fontWeight: FontWeight.w600)),
          textTheme: const TextTheme(titleMedium: TextStyle(color: Colors.red)),
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            backgroundColor: Colors.transparent,
            elevation: 0,
          )),
      home: const TextFieldLearn(),
    );
  }
}
