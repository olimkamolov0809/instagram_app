import 'package:flutter/material.dart';

class MyLikesPage extends StatefulWidget {
  static final String id = 'my_likes_page';

  const MyLikesPage({Key? key}) : super(key: key);

  @override
  State<MyLikesPage> createState() => _MyLikesPageState();
}

class _MyLikesPageState extends State<MyLikesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('My Likes'),
      ),
    );
  }
}
