// widgets/advertisement_item.dart

import 'package:flutter/material.dart';
import 'fourth_screen.dart';

class AdvertisementItemWidget extends StatefulWidget {
  final String advertisement;

  const AdvertisementItemWidget({
    super.key,
    required this.advertisement,
    required Null Function() onTap,
  });

  @override
  // ignore: library_private_types_in_public_api
  _AdvertisementItemWidgetState createState() =>
      _AdvertisementItemWidgetState();
}

class _AdvertisementItemWidgetState extends State<AdvertisementItemWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  bool isExpanded = false;
  int currentPage = 0;
  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat();
  }

  List<Widget> buildBoatData() {
    // Code implementieren, um Bootsdaten von einer anderen Seite abzurufen
    return [
      const ListTile(
        title: Text(
          'Brand',
          style: TextStyle(fontSize: 16),
        ),
      ),
      const ListTile(
        title: Text(
          'Model',
          style: TextStyle(fontSize: 16),
        ),
      ),
      const ListTile(
        title: Text(
          'Location',
          style: TextStyle(fontSize: 16),
        ),
      ),
      const ListTile(
        title: Text(
          'Year',
          style: TextStyle(fontSize: 16),
        ),
      ),
      const ListTile(
        title: Text(
          'Engine Type',
          style: TextStyle(fontSize: 16),
        ),
      ),
      const ListTile(
        title: Text(
          'Fuel',
          style: TextStyle(fontSize: 16),
        ),
      ),
      const ListTile(
        title: Text(
          'Sail Count: ',
          style: TextStyle(fontSize: 16),
        ),
      ),
      const ListTile(
        title: Text(
          'Sail Area: ',
          style: TextStyle(fontSize: 16),
        ),
      ),
    ];
  }

  void navigateToFourthScreen(BuildContext context) {
    // Code implementieren, um Bilder und Bootsdaten von einer anderen Seite abzurufen
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const FourthScreen(
          category: '',
          advertisement: null,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Hier beginnt die Zeile (Row) für den Bildcontainer
          Row(
            children: [
              // Hier beginnt der Bildcontainer
              Expanded(
                flex: 3,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 6),
                  height: 200, // Hier Höhe des Bildcontainers anpassen
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 238, 238, 238),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: [
                      GestureDetector(
                        onHorizontalDragEnd: (DragEndDetails details) {
                          // Implementieren die Logik für das horizontale Scrollen
                        },
                        child: PageView.builder(
                          controller: _pageController,
                          itemCount: 3000,
                          onPageChanged: (int page) {
                            setState(() {
                              currentPage = page;
                            });
                          },
                          itemBuilder: (BuildContext context, int index) {
                            return Center(
                              child: Text(
                                'Image ${index + 1}',
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        right: 10,
                        child: ElevatedButton(
                          onPressed: () {
                            navigateToFourthScreen(context);
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              horizontal:
                                  5, // Hier Breite des Anbieter Buttons anpassen
                              vertical:
                                  1, // Hier Höhe des Anbieter Buttons anpassen
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: const Text('Anbieter'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Hier endet der Bildcontainer

              const SizedBox(
                  width:
                      10), // Abstand zwischen dem Bildcontainer und dem Namen/Preis

              // Hier beginnt der Bereich für Name und Preis
              const Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Name',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Price',
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
              // Hier endet der Bereich für Name und Preis
            ],
          ),
          // Hier endet die Zeile (Row) für den Bildcontainer und Name/Preis

          const SizedBox(height: 10),

          // Hier beginnt das dezente Textfeld
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 238, 238, 238),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const TextField(
              maxLines: null,
              decoration: InputDecoration(
                hintText: 'Nachricht von einer anderen Seite',
                border: InputBorder.none,
              ),
            ),
          ),
          // Hier endet das dezente Textfeld

          const SizedBox(height: 10),

          // Hier beginnt das ExpansionPanel für Bootsdaten
          ExpansionPanelList(
            elevation: 1,
            expandedHeaderPadding: EdgeInsets.zero,
            expansionCallback: (int index, bool expanded) {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            children: [
              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return const ListTile(
                    title: Text(
                      'Boat Data',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    contentPadding: EdgeInsets.only(left: 16),
                  );
                },
                body: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                  child: Column(
                    children: buildBoatData(),
                  ),
                ),
                isExpanded: isExpanded,
              ),
            ],
          ),
          // Hier endet das ExpansionPanel für Bootsdaten
        ],
      ),
    );
  }
}
