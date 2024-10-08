import 'package:flutter/material.dart';
import 'package:flutter_dice_app/pages/dice_image.dart';
import 'package:flutter_dice_app/pages/dice_roller.dart';
import 'rolldice_button.dart';

const startAlignment = Alignment.topRight;
const endAlignment = Alignment.bottomLeft;

class GradientContainer extends StatelessWidget {
  final Color color1;
  final Color color2;
  const GradientContainer({super.key, required this.color1, required this.color2});

  

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color1,
              color2,
            ],
            begin: startAlignment,
            end: endAlignment,
          ),
        ),
        child: Center(
          child: DiceRoller(),
        ),);
  }
}
