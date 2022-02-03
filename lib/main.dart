import 'package:flutter/material.dart';
import 'package:my_app/Home_Screen.dart';
import 'Home_Screen.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // Es un widget de tipo estatico o que no procesa datos
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: HomeScreen()); //MaterialApp
  }
}
