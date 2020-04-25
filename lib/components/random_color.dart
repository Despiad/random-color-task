import 'dart:math' as math;
import 'package:flutter/material.dart';

class RandomColor extends StatefulWidget {
  @override
  _RandomColorState createState() => _RandomColorState();
}

class _RandomColorState extends State<RandomColor> {
  Color _backgroundColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeColor,
      child: Container(
        color: _backgroundColor,
        child: Center(
          child: Text(
            'Hey there\nBackground color: $_backgroundColor\n',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  void _changeColor() {
    setState(() {
      _backgroundColor = Color(math.Random().nextInt(0xffffffff));
    });
  }
}
