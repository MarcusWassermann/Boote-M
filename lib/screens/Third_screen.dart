

import 'package:boote_m/screens/advertisement_item.dart';
import 'package:boote_m/widgets/custom_navigations_bar.dart';
import 'package:flutter/material.dart';
import 'package:boote_m/widgets/info_card.dart';
import 'package:boote_m/screens/fourth_screen.dart';


class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key, required this.category});

  final String category;

  @override
  // ignore: library_private_types_in_public_api
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  final Color boxColor = const Color.fromARGB(255, 237, 238, 228);

  final List<String> topBoxContents = [
    'Marke',
    'Modell',
    'Auswahl',
    'Liegeplatz',
    'Baujahr von',
    'Baujahr bis',
    'Länge min',
    'Länge max',
    'Preis von',
    'Preis bis',
    'Motorart',
    'Kraftstoff',
    'Leistung von',
  ];

  List<String> advertisements = [];
  int currentPage = 0;
  int itemsPerPage = 10;

  @override
  void initState() {
    super.initState();

    advertisements = List.generate(3000, (index) => 'Anzeige ${index + 1}');
  }

  void _loadMoreAdvertisement() {
    setState(() {
      currentPage++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 33, 150, 243),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(0, 0, 0, 0),
        elevation: 0,
        toolbarHeight: 80,
        centerTitle: true,
        title: SizedBox(
          width: MediaQuery.of(context).size.width / 2,
          child: Image.asset('assets/logo-transparent-png.png'),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: topBoxContents.map((content) {
                return InfoCard(
                  content: content,
                  boxColor: boxColor,
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text(''),
                          content: Text(content),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Filter anwenden'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  onFilterApply: () {
                    // Implementieren Sie die Filteranwendung
                  },
                );
              }).toList(),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: currentPage * itemsPerPage + itemsPerPage,
              itemBuilder: (context, index) {
                if (index >= advertisements.length) {
                  _loadMoreAdvertisement();
                  return const SizedBox();
                }
                String advertisement = advertisements[index];
                return AdvertisementItemWidget(
                  advertisement: advertisement,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FourthScreen(
                          category: '',
                          advertisement: null,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: 0, 
        onItemTapped: (index) {
          
        },
      ),
    );
  }
}
