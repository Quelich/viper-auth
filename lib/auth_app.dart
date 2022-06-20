import 'package:auth_app/presenter/splash_presenter.dart';
import 'package:auth_app/view/splash_page.dart';
import 'package:flutter/material.dart';

class AuthApp extends StatelessWidget {
  AuthApp({Key? key}) : super(key: key);


  final _splashPresenter = SplashPresenter();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: SplashPage(),
    );
  }
}


