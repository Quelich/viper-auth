import 'package:auth_app/interactor/signup_interactor.dart';
import 'package:auth_app/router/auth_app_router.dart';
import 'package:flutter/material.dart';

class SignupPresenter {
   final AuthAppRouter _router = AuthAppRouter();
   final SignupInteractor _signupInteractor = SignupInteractor();

   AuthAppRouter get router => _router;
   SignupInteractor get signupInteractor => _signupInteractor;

    Future signUp(
        TextEditingController emailController,
        TextEditingController passwordController) async {
      if (emailController.text.isEmpty || passwordController.text.isEmpty) {
        throw Exception('Please enter email and password');
      }
  
      _signupInteractor.getSignUpResult(emailController, passwordController);
    }
}
