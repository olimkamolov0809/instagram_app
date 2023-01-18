import 'package:flutter/material.dart';

class MySearchPage extends StatefulWidget {
  static final String id = 'my_search_page';

  const MySearchPage({Key? key}) : super(key: key);

  @override
  State<MySearchPage> createState() => _MySearchPageState();
}

class _MySearchPageState extends State<MySearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("My Search"),
      ),
    );
  }
}
