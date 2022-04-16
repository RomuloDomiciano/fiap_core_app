import 'package:flutter/material.dart';

class StandardCardContent extends StatelessWidget {
  final String leftText;
  final String? rightText;

  StandardCardContent({required this.leftText, this.rightText = ''});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.blue, width: 2),
      ),
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Text(
            leftText,
            style: TextStyle(fontSize: 20),
          ),
          Spacer(),
          Text(
            rightText!,
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
