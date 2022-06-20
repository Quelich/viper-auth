import 'package:auth_app/view/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../presenter/signup_presenter.dart';
import 'home_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignupPage> {
  final _signUpPresenter = SignupPresenter();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  // Dispose controllers when there is no use of them
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return const Center(
              child: Text(
                'Error signing in',
                style: TextStyle(color: Colors.red),
              ),
            );
          } else if (snapshot.hasData) {
            return SplashPage();
          }
          return Scaffold(
            appBar: AppBar(
              title: const Text('Sign Up Page'),
            ),
            body: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      TextField(
                        controller: _emailController,
                        cursorColor: Colors.white,
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(labelText: 'Email'),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      TextField(
                        controller: _passwordController,
                        cursorColor: Colors.white,
                        textInputAction: TextInputAction.next,
                        decoration:
                            const InputDecoration(labelText: 'Password'),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          _signUpPresenter.signUp(
                              _emailController, _passwordController);
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size.fromHeight(50),
                        ),
                        icon: const Icon(
                          Icons.login_outlined,
                          size: 32,
                        ),
                        label: const Text(
                          'Sign Up',
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
