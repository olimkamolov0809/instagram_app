import 'package:flutter/material.dart';
import 'package:instagram_app/pages/home_page.dart';
import 'package:instagram_app/pages/signin_page.dart';
import 'package:instagram_app/services/utils_service.dart';

class SignUpPage extends StatefulWidget {
  static final String id = 'signup_page';

  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var isLoading = false;
  var fullnameController = TextEditingController();
  var emailCintroller = TextEditingController();
  var passwordController = TextEditingController();
  var cpasswordController = TextEditingController();

  _doSignUp() {
    String fullname = fullnameController.text.toString().trim();
    String email = emailCintroller.text.toString().trim();
    String password = passwordController.text.toString().trim();
    String cpassword = cpasswordController.text.toString().trim();

    if (fullname.isEmpty ||
        email.isEmpty ||
        password.isEmpty ||
        cpassword.isEmpty) return;

    if (password != cpassword) {
      Utils.fireToast("Password and confirm password does not match");
      return;
    }
    Navigator.pushReplacementNamed(context, HomePage.id);
  }

  _callSignInPage() {
    Navigator.pushReplacementNamed(context, SignInPage.id);
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
                    // #full name
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
                        controller: fullnameController,
                        obscureText: true,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.how_to_reg_outlined,
                            size: 18,
                            color: Colors.white54,
                          ),
                          hintText: "Full Name",
                          border: InputBorder.none,
                          hintStyle:
                              TextStyle(fontSize: 17, color: Colors.white54),
                        ),
                      ),
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
                    // #Cpassword
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
                        controller: cpasswordController,
                        obscureText: true,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.password,
                            size: 18,
                            color: Colors.white54,
                          ),
                          hintText: "Confirm Password",
                          border: InputBorder.none,
                          hintStyle:
                              TextStyle(fontSize: 17, color: Colors.white54),
                        ),
                      ),
                    ),
                    // #Sign Up
                    GestureDetector(
                      onTap: () {
                        _doSignUp();
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
                          child: Text('Sign Up',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18)),
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
                    "Already have an account?",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      _callSignInPage();
                    },
                    child: Text("Sign In",
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
