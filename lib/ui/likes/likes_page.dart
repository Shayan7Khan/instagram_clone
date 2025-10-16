import 'package:flutter/material.dart';

class LikesPage extends StatefulWidget {
  const LikesPage({super.key});

  @override
  State<LikesPage> createState() => _LikesPageState();
}

class _LikesPageState extends State<LikesPage> {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: deviceHeight * .09,
          backgroundColor: Colors.grey[100],
          elevation: 0.3,
          centerTitle: false,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          titleSpacing: 0,
          title: Text(
            'shayankhan_',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Divider(height: deviceHeight * .003),
              SizedBox(
                height: deviceWidth * .1,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: deviceHeight * .01,
                    left: deviceWidth * .05,
                  ),
                  child: Text('Follow Requests'),
                ),
              ),
              Divider(),
              //New Notificaton
              SizedBox(
                height: deviceHeight * .12,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 3,
                    horizontal: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "New",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: deviceHeight * .023),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: deviceHeight * .03,
                            backgroundImage: AssetImage('assets/pic/pic_1.jpg'),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  color: Colors.black, // 👈 important
                                  fontSize: 14,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Ronaldo ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: "liked your photo. "),
                                  TextSpan(
                                    text: "1h ",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 10),

                          // Post thumbnail on right
                          ClipRRect(
                            borderRadius: BorderRadius.circular(6),
                            child: Image.asset(
                              'assets/pic/pic_10.jpg',
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Divider(),
              //Today Notifications
              SizedBox(
                height: deviceHeight * .12,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 3,
                    horizontal: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Today",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: deviceHeight * .023),
                      Row(
                        children: [
                          Stack(
                            children: [
                              CircleAvatar(
                                radius: deviceHeight * .023,
                                backgroundImage: AssetImage(
                                  'assets/pic/pic_1.jpg',
                                ),
                              ),
                              Positioned(
                                left: 15,
                                top: 10,
                                child: CircleAvatar(
                                  radius: deviceHeight * .019,
                                  backgroundImage: AssetImage(
                                    'assets/pic/pic_2.jpg',
                                  ),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(width: 10),
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  color: Colors.black, // 👈 important
                                  fontSize: 14,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Ronaldo, Messi  ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: 'and '),

                                  TextSpan(
                                    text: " 25 others liked your photo. ",
                                  ),
                                  TextSpan(
                                    text: "1h ",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 10),

                          // Post thumbnail on right
                          ClipRRect(
                            borderRadius: BorderRadius.circular(6),
                            child: Image.asset(
                              'assets/pic/pic_10.jpg',
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              Divider(),
              //This week Notifications
              SizedBox(
                height: deviceHeight * .3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 3,
                    horizontal: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "This Week",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: deviceHeight * .023),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: deviceHeight * .025,
                            backgroundImage: AssetImage('assets/pic/pic_5.jpg'),
                          ),

                          SizedBox(width: 10),
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  color: Colors.black, // 👈 important
                                  fontSize: 14,
                                ),
                                children: [
                                  TextSpan(
                                    text: ' Messi ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  TextSpan(text: "started following you. "),
                                  TextSpan(
                                    text: "3d",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 10),

                         ElevatedButton(
                            style: ButtonStyle(
                              shape: WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadiusGeometry.circular(
                                    8,
                                  ),
                                ),
                              ),

                              backgroundColor: WidgetStatePropertyAll<Color>(
                                Color(0xFFFFFFFF),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Message",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: deviceHeight * .02),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: deviceHeight * .025,
                            backgroundImage: AssetImage('assets/pic/pic_3.jpg'),
                          ),

                          SizedBox(width: 10),
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  color: Colors.black, 
                                  fontSize: 14,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Ronaldo ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  TextSpan(text: "started following you. "),
                                  TextSpan(
                                    text: "5d",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 10),

                          // Post thumbnail on right
                         ElevatedButton(
                            style: ButtonStyle(
                              shape: WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadiusGeometry.circular(
                                    8,
                                  ),
                                ),
                              ),

                              backgroundColor: WidgetStatePropertyAll<Color>(
                                Colors.white,
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Message",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: deviceHeight * .02),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: deviceHeight * .025,
                            backgroundImage: AssetImage('assets/pic/pic_8.jpg'),
                          ),

                          SizedBox(width: 10),
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  color: Colors.black, // 👈 important
                                  fontSize: 14,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Ajeeb Admi ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  TextSpan(text: "started following you"),
                                  TextSpan(
                                    text: " 6d ",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 10),

                          // Post thumbnail on right
                          ElevatedButton(
                            style: ButtonStyle(
                              shape: WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadiusGeometry.circular(
                                    8,
                                  ),
                                ),
                              ),

                              backgroundColor: WidgetStatePropertyAll<Color>(
                                Color(0xFF3797EF),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Follow",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Divider(),
               SizedBox(
                height: deviceHeight * .3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 3,
                    horizontal: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "This Month",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: deviceHeight * .023),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: deviceHeight * .025,
                            backgroundImage: AssetImage('assets/pic/pic_5.jpg'),
                          ),

                          SizedBox(width: 10),
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  color: Colors.black, // 👈 important
                                  fontSize: 14,
                                ),
                                children: [
                                  TextSpan(
                                    text: ' Messi ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  TextSpan(text: "requested to follow you. "),
                                  TextSpan(
                                    text: "2w",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 10),

                          ElevatedButton(
                            style: ButtonStyle(
                              shape: WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadiusGeometry.circular(
                                    8,
                                  ),
                                ),
                              ),

                              backgroundColor: WidgetStatePropertyAll<Color>(
                                Color(0xFF3797EF),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Accept",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: deviceHeight * .02),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: deviceHeight * .025,
                            backgroundImage: AssetImage('assets/pic/pic_3.jpg'),
                          ),

                          SizedBox(width: 10),
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Moulana Tariq Jameel ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  TextSpan(text: "started following you. "),
                                  TextSpan(
                                    text: "1w",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 10),

                          // Post thumbnail on right
                          ElevatedButton(
                            style: ButtonStyle(
                              shape: WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadiusGeometry.circular(
                                    8,
                                  ),
                                ),
                              ),

                              backgroundColor: WidgetStatePropertyAll<Color>(
                                Colors.white,
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Message",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: deviceHeight * .02),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: deviceHeight * .025,
                            backgroundImage: AssetImage('assets/pic/pic_8.jpg'),
                          ),

                          SizedBox(width: 10),
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  color: Colors.black, // 👈 important
                                  fontSize: 14,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Ajeeb Admi ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  TextSpan(text: "started following you"),
                                  TextSpan(
                                    text: " 6d ",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 10),

                          // Post thumbnail on right
                          ElevatedButton(
                            style: ButtonStyle(
                              shape: WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadiusGeometry.circular(
                                    8,
                                  ),
                                ),
                              ),

                              backgroundColor: WidgetStatePropertyAll<Color>(
                                Color(0xFF3797EF),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Follow",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
