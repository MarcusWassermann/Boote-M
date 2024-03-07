// widgets/drawer_content.dart
import 'package:boote_m/screens/favorites_page.dart';
import 'package:boote_m/screens/login_screen.dart';
import 'package:boote_m/screens/registration_screen.dart';
import 'package:boote_m/screens/second_screen.dart';
import 'package:flutter/material.dart';


class DrawerContent extends StatelessWidget {
  const DrawerContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color.fromARGB(255, 224, 233, 241),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 50, 150, 243),
              ),
              child: Text(
                'Menü',
                style: TextStyle(
                  color: Color.fromARGB(255, 7, 2, 2),
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                // Navigieren zu HomeScreen
              },
            ),
            ListTile(
              leading: const Icon(Icons.search),
              title: const Text('Suche'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.mail),
              title: const Text('Nachrichten'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text('Favoriten'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const FavoritesPage(favoritenListe: []),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.add),
              title: const Text('Anzeige aufgeben'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegistrationScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.list),
              title: const Text('Meine Anzeigen'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Einstellungen'),
              onTap: () {
                // Navigieren zu EinstellungenScreen
              },
            ),
            ListTile(
              leading: const Icon(Icons.help),
              title: const Text('Hilfe'),
              onTap: () {
                // Navigieren zu HilfeScreen
              },
            ),
            ListTile(
              leading: const Icon(Icons.login),
              title: const Text('Login'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
