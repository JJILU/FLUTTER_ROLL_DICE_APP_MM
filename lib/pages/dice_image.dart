import 'package:flutter/material.dart';

class DiceImage extends StatelessWidget {
  final String imgPath;
  const DiceImage({super.key, required this.imgPath});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imgPath,
      width: 200,
    );
  }
}
