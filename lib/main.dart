import 'package:flutter/material.dart';
import 'package:flutter_dice_app/pages/gradient_container.dart';

void main() {
  runApp(
   const MaterialApp(
      home: Scaffold(
        body: GradientContainer(color1:  Color.fromARGB(255, 63, 12, 149),color2: Color.fromARGB(255, 220, 96, 58),),
      ),
    ),
  );
}
