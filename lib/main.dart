import 'package:flutter/material.dart';
import 'package:mental_healthapp/pages/home_pages.dart';
import 'package:mental_healthapp/util/exercise_tile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
