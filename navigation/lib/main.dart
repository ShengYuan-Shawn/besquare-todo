import 'package:flutter/material.dart';
import 'package:navigation/shades_with_params.dart';
import 'package:navigation/colour_slider.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: HomePage(),
      routes: {
        '/index': (context) => HomePage(),
        '/shades':(context) => ShadesWithParams(), // create a key value and parse to other file
        '/slider':(context) => RGBSliderPage(),
      },
    );
  }
}