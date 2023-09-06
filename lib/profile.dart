import 'package:flutter/material.dart';

import 'logins/login.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page!'),
      ),
      body: Center(
          child: Column(
        children: [
          InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                );
              },
              child: Container(
                color: Colors.lightBlueAccent,
                  width: 200,
                  height: 80,
                  child: const Center(child: Text('Log Out')))),
        ],
      )),
    );
  }
}
