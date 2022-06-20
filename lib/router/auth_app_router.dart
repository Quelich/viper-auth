import 'package:flutter/material.dart';

import '../view/home_page.dart';
import '../view/signin_page.dart';
import '../view/splash_page.dart';
import '../view/signup_page.dart';

class AuthAppRouter {
  void navigateToHomePage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomePage(),
      ),
    );
  }

  void navigateToSplashPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SplashPage(),
      ),
    );
  }

  void navigateToSigninPage(BuildContext context) {
    print("Call AuthAppRouter.navigateToSigninPage");
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SigninPage(),
      ),
    );
  }

  void navigateToSignupPage(BuildContext context) {
    print("Call AuthAppRouter.navigateToSignupPage");
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SignupPage(),
      ),
    );
  }
}
