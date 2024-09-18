import 'package:flutter/material.dart';

class RadioButtonWidget extends StatefulWidget {
  final List<String> options;
  final String answer;
  final Function(String) onChanged;

  RadioButtonWidget({
    required this.options,
    required this.answer,
    required this.onChanged,
  });

  @override
  _RadioButtonWidgetState createState() => _RadioButtonWidgetState();
}

class _RadioButtonWidgetState extends State<RadioButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: widget.options.map((option) {
        return RadioListTile<String>(
          title: Text(
            option,
            style: TextStyle(fontSize: 16),
          ),
          value: option,
          dense: true,
          groupValue: widget.answer,
          onChanged: (value) {
            setState(() {
              widget.onChanged(value!);
            });
          },
        );
      }).toList(),
    );
  }
}
