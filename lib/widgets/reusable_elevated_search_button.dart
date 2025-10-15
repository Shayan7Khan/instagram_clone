import 'package:flutter/material.dart';

class ReusableElevatedSearchButton extends StatelessWidget {
  final String name;
  final Icon? icon;
   const ReusableElevatedSearchButton( {this.icon, super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(10),
          side: BorderSide(color: Colors.white),
        ),
      ),
      child: Row(
        children: [
          if(icon != null) icon!,
          SizedBox(width: 6),
          Text(name, style: TextStyle(color: Colors.black)),
        ],
      ),
    );
  }
}
