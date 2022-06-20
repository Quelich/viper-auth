import 'package:flutter/material.dart';

import '../view/home_page.dart';
import '../view/signin_page.dart';
import '../view/splash_page.dart';
import '../view/signup_page.dart';

class AuthAppRouter {
  void navigateToHomePage(BuildContext context) {
    Future.delayed(Duration.zero, () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return HomePage();
          },
        ),
      );
    });
  }

  void navigateToSplashPage(BuildContext context) {
    Future.delayed(Duration.zero, () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return SplashPage();
          },
        ),
      );
    });
  }

  void navigateToSigninPage(BuildContext context) {
    Future.delayed(Duration.zero, () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return SigninPage();
          },
        ),
      );
    });
  }

  void navigateToSignupPage(BuildContext context) {
    Future.delayed(Duration.zero, () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return SignupPage();
          },
        ),
      );
    });
  }

  void navigateBack(BuildContext context) {
    print("Pressed on back");
    Future.delayed(Duration.zero, () {
      Navigator.pop(context);
    });
  }
}
