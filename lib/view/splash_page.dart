import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

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
                // navigate to sign in page
              },
              child: Text("Signin"),
            ),
            ElevatedButton(
              onPressed: () {
                // navigate to sign up page
              },
              child: Text("Signup"),
            ),
          ],
        ),
      ),
    );
  }
}
