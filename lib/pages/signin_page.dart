import 'package:flutter/material.dart';
import 'package:instagram_app/pages/home_page.dart';
import 'package:instagram_app/pages/signup_page.dart';

class SignInPage extends StatefulWidget {
  static final String id = 'signin_page';

  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  var isLoading = false;
  var emailCintroller = TextEditingController();
  var passwordController = TextEditingController();

  _doSignIn() {
    String email = emailCintroller.text.toString().trim();
    String password = passwordController.text.toString().trim();
    if (email.isEmpty || password.isEmpty) return;

    Navigator.pushReplacementNamed(context, HomePage.id);
  }

  _callSignUpPage() {
    Navigator.pushReplacementNamed(context, SignUpPage.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
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
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Instagram",
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontFamily: "Billabong"),
                    ),
                    // #Email
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 50,
                      padding: EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: TextField(
                        controller: emailCintroller,
                        obscureText: true,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.email_outlined,
                            size: 18,
                            color: Colors.white54,
                          ),
                          hintText: "Email",
                          border: InputBorder.none,
                          hintStyle:
                              TextStyle(fontSize: 17, color: Colors.white54),
                        ),
                      ),
                    ),
                    // #Password
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 50,
                      padding: EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: TextField(
                        controller: passwordController,
                        obscureText: true,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.password,
                            size: 18,
                            color: Colors.white54,
                          ),
                          hintText: "Password",
                          border: InputBorder.none,
                          hintStyle:
                              TextStyle(fontSize: 17, color: Colors.white54),
                        ),
                      ),
                    ),
                    // #Sign In
                    GestureDetector(
                      onTap: () {
                        _doSignIn();
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        height: 50,
                        padding: EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Center(
                          child: Text('Sign In',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17)),
                        ),
                      ),
                    ),
                  ]),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      _callSignUpPage();
                    },
                    child: Text("Sign Up",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
