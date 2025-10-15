import 'package:flutter/material.dart';

class StoryAvatar extends StatelessWidget {
  final bool isNew;
  final String username;
  final String image;

   const StoryAvatar({super.key, required this.username, this.isNew = false, required this.image});

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
             CircleAvatar(
              radius: 30,
               backgroundImage: AssetImage(image),
            ),
            if (isNew)
              Positioned(
                bottom: -2,
                right: -2,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  padding: const EdgeInsets.all(3),
                  child: const Icon(Icons.add, size: 16, color: Colors.white),
                ),
              ),
          ],
        ),
        SizedBox(height: deviceHeight * .01),
        Text(
          username,
          style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
        ),
        
      ],
      
    );
  }
}
