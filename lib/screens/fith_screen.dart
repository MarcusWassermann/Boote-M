import 'package:boote_m/screens/login_screen.dart';
import 'package:boote_m/screens/postad_screen.dart';
import 'package:boote_m/screens/registration_screen.dart';
import 'package:flutter/material.dart';

class FifthScreen extends StatelessWidget {
  const FifthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Image.asset(
            'assets/logo-transparent-png.png',
            height: 50, // Logos anpassen
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegistrationScreen(),
                  ),
                );
              },
              child: const Text('Registrieren'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
              child: const Text('Einloggen'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PostAdScreen(),
                  ),
                );
              },
              child: const Text('Anzeige aufgeben'),
            ),
          ],
        ),
      ),
    );
  }
}
