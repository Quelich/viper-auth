import 'package:flutter/material.dart';

import '../view/home_page.dart';
import '../view/signin_page.dart';
import '../view/splash_page.dart';
import '../view/signup_page.dart';

class AuthAppRouter {
  Widget navigateToHomePage() {
    return HomePage();
  }

  Widget navigateToSplashPage() {
    return SplashPage();
  }

  void navigateToSigninPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return SigninPage();
        },
      ),
    );
  }

  void navigateToSignupPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return SignupPage();
        },
      ),
    );
  }

  void navigateBack(BuildContext context) {
    Navigator.pop(context);
  }
}
