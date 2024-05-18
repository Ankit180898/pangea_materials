import 'package:flutter/material.dart';
import 'package:pangea_materials/view/screens/home/home_screen.dart';
import 'package:pangea_materials/view/styles/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      color: $styles.colors.black,
      theme: ThemeData(
          fontFamily: $styles.text.body.fontFamily, useMaterial3: true),
      home: HomeScreen(),
    );
  }
}

AppStyle get $styles => AppStyle();
