import 'package:firebase_auth/firebase_auth.dart';

class HomePageInteractor {
  // Send a sign in call to Firebase Auth API and return the result
  User? getCurrentFirebaseUser() {
    try {
      return FirebaseAuth.instance.currentUser!;
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }

  // Sign out current firebase user from the application
  void signOutFirebaseUser() => FirebaseAuth.instance.signOut();
}
