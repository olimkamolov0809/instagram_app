import 'package:flutter/material.dart';

class MyProfilePage extends StatefulWidget {
  static final String id = 'my_profile_page';

  const MyProfilePage({Key? key}) : super(key: key);

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('My Profile'),
      ),
    );
  }
}
