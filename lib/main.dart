import 'package:flutter/material.dart';
import 'package:instagram/homepage.dart';
import 'package:instagram/splashscreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          inputDecorationTheme: InputDecorationTheme(hintStyle: TextStyle())),
      title: "Instagram UI",
      home: SplashScreen(),
    );
  }
}
