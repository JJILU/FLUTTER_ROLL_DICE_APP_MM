import 'package:flutter/material.dart';

class RolldiceButton extends StatelessWidget {
  final void Function()? onpressed;

  const RolldiceButton(
    {
      super.key,
      this.onpressed
      });

  @override
  Widget build(BuildContext context) {
    return TextButton(
            onPressed: onpressed,
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              // padding: const EdgeInsets.only(top: 20),
              textStyle: const TextStyle(
                fontSize: 28,
              ),
            ),
            child: const Text("Roll Dice"),
          );
  }
}