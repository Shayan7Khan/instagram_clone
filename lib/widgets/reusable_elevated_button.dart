import 'package:flutter/material.dart';
import 'package:instagram_clone/main_screen.dart';

class ReusableElevatedButton extends StatelessWidget {
  final String name;
   final double deviceHeight;
   final double deviceWidth;
  ReusableElevatedButton({super.key, required this.name, required this.deviceHeight, required this.deviceWidth});

  @override
  Widget build(BuildContext context) {
    
    return ElevatedButton(
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => MainScreen()),
        );
      },

      style: ButtonStyle(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(8),
          ),
        ),
        minimumSize: WidgetStatePropertyAll<Size>(
          Size(deviceWidth * 0.915, deviceHeight * 0.054),
        ),
        backgroundColor: WidgetStatePropertyAll<Color>(Colors.blueAccent),
      ),
      child: Text(
        name,
        style: Theme.of(
          context,
        ).textTheme.labelSmall!.copyWith(color: Colors.white, fontSize: 16),
      ),
    );
  }
}
