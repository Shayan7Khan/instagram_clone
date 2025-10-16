import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/drawer.dart';
import 'package:instagram_clone/widgets/reusable_column_for_followers.dart';
import 'package:instagram_clone/widgets/reusable_story_avatar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

final List<Map<String, String>> _images = [
    {'image': 'assets/posts/post_1.jpg'},
    {'image': 'assets/posts/post_2.jpg'},
    {'image': 'assets/posts/post_3.jpg'},
    {'image': 'assets/posts/post_4.jpg'},
    {'image': 'assets/posts/post_5.jpg'},
    {'image': 'assets/posts/post_6.jpg'},
    {'image': 'assets/posts/post_7.jpg'},
    {'image': 'assets/posts/post_8.jpg'},
    {'image': 'assets/posts/post_9.jpg'},
    {'image': 'assets/posts/post_11.jpg'},
    {'image': 'assets/posts/post_12.jpg'},
    {'image': 'assets/posts/post_13.jpg'},
    {'image': 'assets/posts/post_14.jpg'},
    {'image': 'assets/posts/post_15.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        endDrawer: MyDrawer(),
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            //  APP BAR 
            SliverAppBar(
              backgroundColor: Colors.white,
              floating: true,
              pinned: false,
              centerTitle: true,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.lock, size: 20, color: Colors.black),
                  SizedBox(width: deviceWidth * .01),
                  const Text(
                    'Shayan__1.0',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              
            ),

            //  PROFILE HEADER 
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 13, right: 23),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/pic/pic_3.jpg'),
                          radius: deviceHeight * .054),
                        const ReusableColumnForFollowers(
                          title: '54',
                          label: 'Posts',
                        ),
                        const ReusableColumnForFollowers(
                          title: '834',
                          label: 'Followers',
                        ),
                        const ReusableColumnForFollowers(
                          title: '162',
                          label: 'Following',
                        ),
                      ],
                    ),
                    SizedBox(height: deviceHeight * .01),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Shayan Khan',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Mobile Application Developer',
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          'I Sin Too Much To Pray For You',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(height: deviceHeight * .03),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        minimumSize: Size(
                          deviceWidth * 0.915,
                          deviceHeight * 0.04,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                            color: Colors.grey.shade400,
                            width: 1,
                          ),
                        ),
                      ),
                      child: const Text(
                        'Edit Profile',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: deviceHeight * .01),

                    //  STORIES 
                    SizedBox(
                      height: 100,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: StoryAvatar(username: 'New', isNew: true, image: 'assets/posts/post_12.jpg',),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: StoryAvatar(username: 'September', image: 'assets/posts/post_9.jpg',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: StoryAvatar(username: 'August', image: 'assets/posts/post_11.jpg',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: StoryAvatar(username: 'July', image: 'assets/posts/post_5.jpg',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //  DIVIDER & TABS 
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 1.0),
                child: Divider(
                  color: Colors.grey,
                  thickness: .5,
                  height: deviceHeight * .001, // ensures it's visible
                  indent: 0, // no padding on left
                  endIndent: 0, // no padding on right
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.grid_on,
                        size: 28,
                        color: Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.person_pin_outlined,
                        size: 28,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
             


            //  GRID OF POSTS 
            SliverPadding(
              padding:  EdgeInsets.only(left: 2, right: 2),
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                ),
                delegate: SliverChildBuilderDelegate((context, index) {
                  final image = _images[index];
                  return Image(
                    image: AssetImage(image['image']!),
                    fit: BoxFit.cover,
                  );
                }, childCount: _images.length),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
