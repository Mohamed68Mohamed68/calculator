import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton({
    required this.color,
    required this.textColor,
    required this.buttonText,  this.buttonTapped,
  });
  final Color color;
  final Color textColor;
  final String buttonText;
  final buttonTapped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTapped,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(20),
          child: Container(
            color: color,
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(
                  color: textColor,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
