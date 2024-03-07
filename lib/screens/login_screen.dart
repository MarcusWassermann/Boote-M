import 'package:boote_m/screens/mainscreen.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginScreen({super.key});

  Future<void> _login(BuildContext context) async {
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      // Fehlermeldung anzeigen, wenn E-Mail oder Passwort fehlen
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Bitte geben Sie E-Mail und Passwort ein'),
        ),
      );
    } else {
      // Einloggen erfolgreich
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Einloggen erfolgreich: $email')),
      );
      // Aktionen nach dem Einloggen
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const MainScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Zurück zum vorherigen Bildschirm
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MainScreen()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 80,
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
                    suffixIcon: null, // Entfernen des Fragezeichen-Icons
                  ),
                  obscureText: true,
                ),
              ),
            ),
            const SizedBox(height: 12.0),
            GestureDetector(
              onTap: () {
                // Aktion ausführen, wenn auf "Passwort vergessen" geklickt wird
              },
              child: const Text(
                'Passwort vergessen?',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () => _login(context),
              child: const Text('Einloggen'),
            ),
          ],
        ),
      ),
    );
  }
}
