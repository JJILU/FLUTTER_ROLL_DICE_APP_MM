import 'package:flutter/material.dart';
import 'package:flutter_dice_app/pages/dice_image.dart';
import 'package:flutter_dice_app/pages/rolldice_button.dart';

class DiceRoller extends StatefulWidget {

var activeDiceImage = "assets/images/dice-2.png";

  void rollDice() {
    activeDiceImage = "assets/images/dice-4.png";
    print(activeDiceImage);
  }  
  
 const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        DiceImage(
          imgPath: activeDiceImage,
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
