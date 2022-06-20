import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'auth_app.dart';

void main() {
  initializeFirebase();
  runApp( AuthApp());
}

// Initialize Firebase before the app starts.
Future<void> initializeFirebase() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}
