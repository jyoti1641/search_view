import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final input_icon;
  final String hintText;
  final bool obsecure;
  final TextInputType type;

  const MyTextField({
    super.key,
    required this.controller,
    required this.input_icon,
    required this.hintText,
    required this.obsecure,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: (screenHeight * 0.06),
      width: (screenWidth * 0.85),
      child: TextField(
        controller: controller,
        obscureText: obsecure,
        keyboardType: type,
        decoration: InputDecoration(
          isCollapsed: false,
          isDense: false,
          contentPadding: EdgeInsets.all(screenHeight * 0.01),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xff3D4194)),
            borderRadius: BorderRadius.circular(10),
          ),
          fillColor: Colors.white,
          filled: true,
          hintText: hintText,
          prefixIcon: input_icon,
          hintStyle: TextStyle(
            color: Colors.grey[400],
          ),
        ),
      ),
    );
  }
}
