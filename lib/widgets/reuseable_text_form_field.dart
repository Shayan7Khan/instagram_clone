import 'package:flutter/material.dart';

class ReuseableTextFormField extends StatelessWidget {
  final String hintText;
  const ReuseableTextFormField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          
          borderRadius: BorderRadius.circular(10),
      
        ),
      ),
    );
  }
}
