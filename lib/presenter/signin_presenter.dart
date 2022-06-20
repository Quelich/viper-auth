import 'package:auth_app/router/auth_app_router.dart';
import 'package:auth_app/interactor/signin_interactor.dart';
import 'package:auth_app/view/signin_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../view/home_page.dart';

class SigninPresenter {
  AuthAppRouter _router = AuthAppRouter();
  SigninInteractor _interactor = SigninInteractor();

  AuthAppRouter get router => _router;
  SigninInteractor get interactor => _interactor;

  // Sign-in user with email and password
  Future signIn(TextEditingController emailController,
      TextEditingController passwordController) async {
    if (emailController.text.isEmpty || passwordController.text.isEmpty) {
      throw Exception('Please enter email and password');
    }

    _interactor.getSignInResult(emailController, passwordController);
  }
}
