import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.deepOrangeAccent,
      child: Text(
        'Pizza',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 80,
          decoration: TextDecoration.none,
          fontFamily: 'Oxygen',
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
