import 'package:flutter/material.dart';

class StandardCard extends StatelessWidget {
  final String cardTitle;
  final Function()? onPressed;

  StandardCard({required this.cardTitle, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.blue, width: 2),
        ),
        height: 80,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            Text(
              cardTitle,
              style: TextStyle(fontSize: 20),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.lime,
            ),
          ],
        ),
      ),
    );
  }
}
