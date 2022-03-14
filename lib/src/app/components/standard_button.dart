import 'package:flutter/material.dart';

class StandardButton extends StatelessWidget {
  final String buttonText;
  final Function()? onPressed;

  StandardButton({required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //width: 100,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(buttonText),
        ),
      ),
    );
  }
}
