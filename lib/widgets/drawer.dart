import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Text(
              "Shayan__1.0",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.archive),
            title: Text('Archive'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.timer),
            title: Text('Your Activity'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.card_membership_outlined),
            title: Text('Name Tag'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.save_outlined),
            title: Text('Saved'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.star_border_outlined),
            title: Text('Close Friends'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.people_alt_outlined),
            title: Text('Discover people'),
            onTap: () {},
          ),

          ListTile(
            leading: Icon(Icons.facebook_outlined),
            title: Text('Open Facebook.'),
            onTap: () {},
          ),

          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.only(left: 8.0, right: 2.0),
            child: Row(
              children: [
                Icon(Icons.light_mode),
                SizedBox(width: 5),
                Text("Toggle Light/Dark mode", style: TextStyle(fontSize: 15)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
