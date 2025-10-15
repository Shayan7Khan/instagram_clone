import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/reusable_elevated_search_button.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 10, left: 10),
                    child: TextField(
                      autofocus: false,
                      decoration: InputDecoration(
                        fillColor: Color(0xFFdbdbde),
                        filled: true,

                        isDense: true,
                        prefixIcon: Icon(Icons.search),
                        hint: Text('Search'),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.live_tv_outlined),
                ),
              ],
            ),
            SizedBox(height: 5),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ReusableElevatedSearchButton(
                      name: 'IGTV',
                      icon: Icon(Icons.tv_off_outlined),
                    ),
                    SizedBox(width: 10),
                    ReusableElevatedSearchButton(
                      name: 'Shop',
                      icon: Icon(Icons.shop_outlined),
                    ),
                    SizedBox(width: 10),
                    ReusableElevatedSearchButton(name: 'Style'),
                    SizedBox(width: 10),
                    ReusableElevatedSearchButton(name: 'Sports'),
                    SizedBox(width: 10),
                    ReusableElevatedSearchButton(name: 'Auto'),
                    SizedBox(width: 10),
                    ReusableElevatedSearchButton(name: 'Garments'),
                  ],
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                ),
                itemCount: _images.length,
                itemBuilder: (context, index) {
                  final image = _images[index];
                  return Image(
                    image: AssetImage(image['image']!),
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
