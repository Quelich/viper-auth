import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SigninInteractor {
  
  // Send a sign in call to Firebase Auth API and return the result
  Future getSignInResult(TextEditingController emailController,
      TextEditingController passwordController) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }
}
