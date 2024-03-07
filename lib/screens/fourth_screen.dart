import 'package:boote_m/screens/contactformscreen.dart';
import 'package:flutter/material.dart';


class FourthScreen extends StatelessWidget {
  final String category;

  const FourthScreen(
      {super.key, required this.category, required advertisement});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 33, 150, 243),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 80,
        title: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: Image.asset('assets/logo-transparent-png.png'),
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              // Aktion für den Menü-Button hinzufügen
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.width / 2,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                        ),
                      ),
                      child: const Icon(
                        Icons.arrow_forward,
                        size: 30,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Text(
                    'Preis: 520000 EUR',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 7, 1, 1),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Text(
                    'Bootsdaten: ...',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 7, 1, 1),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Text(
                    'Anbieter: ...',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 7, 1, 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 20,
            bottom: 20,
            child: IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                // Aktion für den Home-Button hinzufügen
              },
            ),
          ),
          Positioned(
            right: 20,
            bottom: 20,
            child: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                // Aktion für den Menü-Button hinzufügen
              },
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 90,
            child: Center(
              child: ElevatedButton(
                onPressed: () async {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ContactFormScreen(),
                    ),
                  );
                  if (result == 'back') {
                    // ignore: use_build_context_synchronously
                    Navigator.popUntil(
                        // ignore: use_build_context_synchronously
                        context,
                        ModalRoute.withName('/third_screen'));
                  }
                },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                child: const Text(
                  'Anbieter kontaktieren',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
