import 'package:flutter/material.dart';

class ReuseablePostCard extends StatelessWidget {
  final String userName;
  final String userImage;
  final String location;
  final String postImage;
  final double deviceHeight;
  final double deviceWidth;

  const ReuseablePostCard({
    super.key,
    required this.userName,
    required this.userImage,
    required this.location,
    required this.postImage,
    required this.deviceHeight,
    required this.deviceWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Header section
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: deviceWidth * 0.05,
            vertical: deviceHeight * 0.01,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: deviceHeight * 0.025,
                    backgroundImage: AssetImage(userImage),
                  ),
                  SizedBox(width: deviceWidth * 0.03),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userName,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        location,
                        style: Theme.of(
                          context,
                        ).textTheme.labelSmall!.copyWith(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              Icon(Icons.more_horiz),
            ],
          ),
        ),

        // Post Image
        ClipRRect(
          borderRadius: BorderRadius.zero,
          child: Image.asset(
            postImage,
            width: double.infinity,
            height: deviceHeight * 0.45,
            fit: BoxFit.cover,
          ),
        ),

        // Action Buttons
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border_outlined,
                    size: deviceHeight * .04,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.chat_bubble_outline_outlined,
                    size: deviceHeight * .04,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.send_outlined, size: deviceHeight * .04),
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.bookmark_outline_outlined,
                size: deviceHeight * .04,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
