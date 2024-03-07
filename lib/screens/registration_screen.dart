import 'package:flutter/material.dart';

import 'postad_screen.dart';

class RegistrationScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  RegistrationScreen({super.key});

  Future<void> _register(BuildContext context) async {
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();
    String confirmedPassword = _confirmPasswordController.text.trim();

    if (email.isEmpty || password.isEmpty || confirmedPassword.isEmpty) {
      // Fehlermeldung anzeigen, wenn E-Mail, Passwort oder Passwortwiederholung fehlen
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
              'Bitte geben Sie E-Mail, Passwort und Passwortwiederholung ein'),
        ),
      );
    } else if (password != confirmedPassword) {
      // Fehlermeldung anzeigen, wenn das Passwort und die Passwortwiederholung nicht übereinstimmen
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Die Passwörter stimmen nicht überein')),
      );
    } else {
      // Registrierung erfolgreich
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Registrierung erfolgreich: $email')),
      );
      // Aktionen nach der Registrierung ausführen
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const PostAdScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PostAdScreen()),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 80, // Höhe des Logos anpassen
                child: Image.asset('assets/logo-transparent-png.png'),
              ),
              const SizedBox(height: 60.0),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      labelText: 'E-Mail',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(8),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12.0),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      labelText: 'Passwort',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(8),
                    ),
                    obscureText: true,
                  ),
                ),
              ),
              const SizedBox(height: 12.0),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextField(
                    controller: _confirmPasswordController,
                    decoration: const InputDecoration(
                      labelText: 'Passwort wiederholen',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(8),
                    ),
                    obscureText: true,
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () => _register(context),
                child: const Text('Registrieren'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
