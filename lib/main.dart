import 'package:flutter/material.dart';

import './components/random_color.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Random color task',
      home: RandomColor(),
    );
  }
}
