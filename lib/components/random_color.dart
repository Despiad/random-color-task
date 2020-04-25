import 'dart:math' as math;
import 'package:flutter/material.dart';

class RandomColor extends StatefulWidget {
  @override
  _RandomColorState createState() => _RandomColorState();
}

class _RandomColorState extends State<RandomColor> {
  Color _backgroundColor = Colors.white;
  Color _textColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _changeColor(),
      child: Container(
        color: _backgroundColor,
        child: Center(
          child: Text(
            'TAP ANYWHERE TO CHANGE A COLOR\n' +
                'Background color: $_backgroundColor',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: _textColor,
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
      _textColor = _backgroundColor
          .withAlpha(255)
          .withBlue(50)
          .withGreen(50)
          .withRed(50);
    });
  }
}
