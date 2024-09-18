import 'package:flutter/material.dart';

class SearchBarC extends StatelessWidget {
  final String hint;
  const SearchBarC({
    super.key,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    return Container(
      height: (Height * 0.06),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
            fontSize: 18,
          ),
          suffixIcon: Icon(Icons.search_rounded),
          border: InputBorder.none,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        ),
      ),
    );
  }
}
