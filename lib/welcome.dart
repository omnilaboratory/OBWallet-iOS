import 'package:flutter/material.dart';
import 'home.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
      ),

      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 160),
            const Text(
              'Welcome to AWallet!',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 30),
            
            SizedBox(
              width: 200,
              height: 45,
              child: ElevatedButton(
                child: const Text('Start', style: TextStyle(fontSize: 18)),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
              )
            ),
          ],
        ),
      ),
    );
  }
}
