import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            ElevatedButton.icon(
              onPressed: () {
                //TODO: logout
              },
              icon: const Icon(Icons.logout_outlined),
              label: const Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}
