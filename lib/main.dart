import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/likes_page.dart';
import 'package:instagram_clone/pages/login_page.dart';
import 'package:instagram_clone/utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone',
      theme: instagramTheme,
      debugShowCheckedModeBanner: false,
      home: LikesPage(),
    );
  }
}
 