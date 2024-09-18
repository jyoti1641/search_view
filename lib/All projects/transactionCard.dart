import 'package:flutter/material.dart';

class TransactionCardData {
  final String photo;
  final String name;
  final String time;
  final Color status_color;
  final String Status;

  TransactionCardData({
    required this.photo,
    required this.name,
    required this.time,
    required this.status_color,
    required this.Status,
  });
}
