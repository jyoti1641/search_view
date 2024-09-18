import 'package:flutter/material.dart';

class Formpage {
  final String Label;
  final String hintText;
  final TextInputType keyboardType;
  final List<String> options; // Add this line

  Formpage({
    required this.Label,
    required this.hintText,
    this.keyboardType = TextInputType.text,
    this.options = const [], // Set a default empty list
  });
}
