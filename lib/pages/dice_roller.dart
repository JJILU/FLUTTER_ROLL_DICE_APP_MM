import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_dice_app/pages/dice_image.dart';
import 'package:flutter_dice_app/pages/rolldice_button.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  
  // method 1
  // var activeDiceImage = "assets/images/dice-2.png";
  // or
  var currentDiceRoll = 2;

  void rollDice() {
    // method 1
    // var diceRoll = Random().nextInt(6) + 1; //  1<>6
    // setState tell flutter to rebuild widget
    setState(() {
      // method 1
      // activeDiceImage = "assets/images/dice-$diceRoll.png";

      // method 2
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        DiceImage(
          imgPath: "assets/images/dice-$currentDiceRoll.png",
        ),
        const SizedBox(
          height: 20,
        ),
        RolldiceButton(
          onpressed: rollDice,
        ),
      ],
    );
  }
}
