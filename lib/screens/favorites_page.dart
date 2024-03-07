// screens/favorites_page.dart
import 'package:flutter/material.dart';
import '../../models/favoriten_item.dart';

class FavoritesPage extends StatelessWidget {
  final List<FavoritenItem> favoritenListe;

  const FavoritesPage({super.key, required this.favoritenListe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56), // Höhe der AppBar
        child: AppBar(
          backgroundColor: Colors.blue,
          elevation: 0, // Kein Schatten
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 56, // Höhe des Logos
            child: Image.asset(
              'assets/logo-transparent-png.png',
              fit: BoxFit.contain,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: favoritenListe.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(favoritenListe[index].name),
                  subtitle: Text(favoritenListe[index].beschreibung),
                  leading: Image.asset(favoritenListe[index].bild),
                  // Weitere Anpassungen und Widgets für jeden Favoriten hier einfügen
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                // Aktion für die Home-Seite hier einfügen
              },
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                // Aktion für die Suchseite hier einfügen
              },
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
