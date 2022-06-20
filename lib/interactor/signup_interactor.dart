import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignupInteractor
{
   // Send a sign up call to Firebase Auth API and return the result
  Future getSignUpResult(TextEditingController emailController,
      TextEditingController passwordController) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }
}