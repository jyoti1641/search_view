import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final Color textColor;
  final Color backgroungColor;
  final String text;
  const MyButton({
    super.key,
    required this.onTap,
    required this.textColor,
    required this.backgroungColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: (screenHeight * 0.06),
        width: (screenWidth * 0.85),
        padding: const EdgeInsets.all(0),
        margin: const EdgeInsets.symmetric(horizontal: 0),
        decoration: BoxDecoration(
          color: backgroungColor,
          borderRadius: BorderRadius.circular(23),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
