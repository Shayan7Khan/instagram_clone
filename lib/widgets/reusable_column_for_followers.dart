import 'package:flutter/material.dart';

class ReusableColumnForFollowers extends StatelessWidget {
  final String title;
  final String label;
  const ReusableColumnForFollowers({
    super.key,
    required this.title,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        Text(label),
      ],
    );
  }
}
