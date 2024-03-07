import 'package:flutter/material.dart';

class ReceivedMessagesPage extends StatelessWidget {
  final List<Message> receivedMessages; // Liste der empfangenen Nachrichten

  const ReceivedMessagesPage({super.key, required this.receivedMessages});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Colors.blue, // Hintergrundfarbe der AppBar auf blau setzen
        title:
            const SizedBox(), // Leerer Container, um den Text in der AppBar zu entfernen
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(
                top: kToolbarHeight), // Abstand oberhalb der ListView
            child: Image.asset(
              'assets/logo-transparent-png.png',
              fit: BoxFit.contain,
              height: 56, // Höhe des Logos
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: receivedMessages.length,
              itemBuilder: (BuildContext context, int index) {
                final message = receivedMessages[index];
                return ListTile(
                  title: Text(message.subject),
                  subtitle: Text(message.sender),
                  onTap: () {
                    //  Aktionen ausführen, z.B. Nachricht öffnen
                  },
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors
            .blue, // Hintergrundfarbe der BottomNavigationBar auf blau setzen
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(
                Icons.home,
                color: Colors.white, // Farbe des Home-Icons auf weiß setzen
              ),
              onPressed: () {
                // Aktion für die Home-Seite hier einfügen
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.white, // Farbe des Search-Icons auf weiß setzen
              ),
              onPressed: () {
                // Aktion für die Suchseite hier einfügen
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Message {
  final String subject;
  final String sender;
  final String body;

  Message({required this.subject, required this.sender, required this.body});
}
