import 'package:flutter/material.dart';
import '../presenter/signin_presenter.dart';
import '../presenter/signup_presenter.dart';

class SplashPage extends StatelessWidget {
  SplashPage({Key? key}) : super(key: key);

  final _signinPresenter = SigninPresenter();
  final _signupPresenter = SignupPresenter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to Splash Page',
            ),
            ElevatedButton(
              onPressed: () {
                _signinPresenter.router.navigateToSigninPage(context);
              },
              child: const Text("Signin"),
            ),
            ElevatedButton(
              onPressed: () {
                _signupPresenter.router.navigateToSignupPage(context);
              },
              child: const Text("Signup"),
            ),
          ],
        ),
      ),
    );
  }
}
