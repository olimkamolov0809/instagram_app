import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram_app/pages/home_page.dart';
import 'package:instagram_app/pages/signin_page.dart';

class SplashPage extends StatefulWidget {
  static final String id = 'splash_page';

  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _initTimer();
  }

  _initTimer() {
    Timer(Duration(seconds: 4), () {
      _callSignInPage();
    });
  }

  _callSignInPage() {
    Navigator.pushReplacementNamed(context, SignInPage.id);
  }

  _callHomePage() {
    Navigator.pushReplacementNamed(context, HomePage.id);
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(193, 53, 132, 1),
              Color.fromRGBO(131, 58, 180, 1),
            ]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Center(
              child: Text(
                "Instagram",
                style: TextStyle(
                    fontSize: 50, color: Colors.white, fontFamily: "Billabong"),
              ),
            ),
          ),
          Text(
            'All rights reserved',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          SizedBox(height: 20),
        ],
      ),
    ));
  }
}
