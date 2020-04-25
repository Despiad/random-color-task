import 'package:flutter/material.dart';

import './screens/random_color_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Random color task',
      home: RandomColorScreen(),
    );
  }
}
