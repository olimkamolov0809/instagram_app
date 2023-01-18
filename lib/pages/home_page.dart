import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_app/pages/my_feed_page.dart';
import 'package:instagram_app/pages/my_likes_page.dart';
import 'package:instagram_app/pages/my_profile_page.dart';
import 'package:instagram_app/pages/my_search_page.dart';
import 'package:instagram_app/pages/my_upload_page.dart';

class HomePage extends StatefulWidget {
  static final String id = 'home_page';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController? _pageController;
  int _currentTap = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          MyFeedPage(),
          MySearchPage(),
          MyUploadPage(),
          MyLikesPage(),
          MyProfilePage(),
        ],
        onPageChanged: (int index) {
          setState(() {
            _currentTap = index;
          });
        },
      ),
      bottomNavigationBar: CupertinoTabBar(
        onTap: (int index) {
          setState(() {
            _currentTap = index;
            _pageController!.animateToPage(index,
                duration: Duration(microseconds: 200), curve: Curves.easeIn);
          });
        },
        currentIndex: _currentTap,
        activeColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 32),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, size: 32),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined, size: 32),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border, size: 32),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box_outlined, size: 32),
          ),
        ],
      ),
    );
  }
}
