import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/reuseable_post_card.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> users = [
    {'name': 'Ronaldo', 'image': 'assets/pic/pic_1.jpg'},
    {'name': 'Messi', 'image': 'assets/pic/pic_2.jpg'},
    {'name': 'Mbappe', 'image': 'assets/pic/pic_3.jpg'},
    {'name': 'Iniesta', 'image': 'assets/pic/pic_4.jpg'},
    {'name': 'Ramos', 'image': 'assets/pic/pic_5.jpg'},
    {'name': 'Zlatan', 'image': 'assets/pic/pic_6.jpg'},
    {'name': 'Bale', 'image': 'assets/pic/pic_7.jpg'},
    {'name': 'Neymar', 'image': 'assets/pic/pic_8.jpg'},
    {'name': 'Xavi', 'image': 'assets/pic/pic_9.jpg'},
    {'name': 'Zidane', 'image': 'assets/pic/pic_10.jpg'},
  ];

  final List<Map<String, dynamic>> posts = [
    {
      'userName': 'Ronaldo',
      'userImage': 'assets/pic/pic_1.jpg',
      'location': 'Peshawar, Pakistan',
      'postImage': 'assets/pic_10.jpg',
    },
    {
      'userName': 'Messi',
      'userImage': 'assets/pic/pic_2.jpg',
      'location': 'Lahore, Pakistan',
      'postImage': 'assets/pic_9.jpg',
    },
    {
      'userName': 'Neymar',
      'userImage': 'assets/pic/pic_8.jpg',
      'location': 'Karachi, Pakistan',
      'postImage': 'assets/pic_7.jpg',
    },
  ];


  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: deviceHeight * .07,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt_outlined, size: 30),
          ),
          title: Text(
            'Instagram',
            style: Theme.of(
              context,
            ).textTheme.displayLarge!.copyWith(fontSize: 30),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.tv_off_outlined)),
            IconButton(onPressed: () {}, icon: Icon(Icons.send_outlined)),
          ],
        ),
        body: ListView.builder(
          itemCount: posts.length + 2, 
          itemBuilder: (context, index) {
            if (index == 0) {
              // Stories section
              return Column(
                children: [
                  Divider(thickness: 0.5),
                  SizedBox(
                    height: deviceHeight * .129,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: users.length,
                      itemBuilder: (context, i) {
                        final user = users[i];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: deviceHeight * .035,
                                backgroundImage: AssetImage(user['image']),
                              ),
                              SizedBox(height: deviceHeight * .01),
                              Text(
                                user['name'],
                                style:
                                    Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Divider(thickness: 0.5),
                ],
              );
            } else if (index - 1 < posts.length) {
              // Posts
              final post = posts[index - 1];
              return ReuseablePostCard(
                userName: post['userName'],
                userImage: post['userImage'],
                location: post['location'],
                postImage: post['postImage'],
                deviceHeight: deviceHeight,
                deviceWidth: deviceWidth,
              );
            } else {
              // Bottom padding
              return SizedBox(height: deviceHeight * 0.05);
            }
          },
        ),
      ),
    );
  
  }
}
