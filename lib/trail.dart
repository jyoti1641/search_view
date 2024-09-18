import 'package:flutter/material.dart';

import 'package:search_view/mynewform.dart';

class Trail extends StatefulWidget {
  const Trail({super.key});

  @override
  State<Trail> createState() => _TrailState();
}

class _TrailState extends State<Trail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyForm()),
          );
        },
        child: Text('tap'),
      ),
    ));
  }
}
