import 'package:boote_m/widgets/custom_navigations_bar.dart';
import 'package:flutter/material.dart';
import '../widgets/category_button.dart';
import '../widgets/navigation_utils.dart';


class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 33, 150, 243),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: FloatingActionButton(
            onPressed: () {
              navigateToHomeScreen(context);
            },
            backgroundColor: const Color.fromARGB(255, 33, 150, 243),
            child: const Icon(Icons.fingerprint),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Image.asset(
              'assets/logo-transparent-png.png',
              height: 50,
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(16),
              childAspectRatio: 1.2,
              mainAxisSpacing: 24,
              crossAxisSpacing: 8,
              children: [
                CategoryButton(
                  label: 'Sailboat',
                  imagePath: 'assets/7395353.jpg',
                  onPressed: () {
                    navigateToThirdScreen(context, 'Sailboat');
                  },
                ),
                CategoryButton(
                  label: 'Motoryacht',
                  imagePath: 'assets/163236.jpg',
                  onPressed: () {
                    navigateToThirdScreen(context, 'Motoryacht');
                  },
                ),
                CategoryButton(
                  label: 'Motorboat',
                  imagePath: 'assets/14674658.jpg',
                  onPressed: () {
                    navigateToThirdScreen(context, 'Motorboat');
                  },
                ),
                CategoryButton(
                  label: 'Ruderboat',
                  imagePath: 'assets/12401798.jpg',
                  onPressed: () {
                    navigateToThirdScreen(context, 'Ruderboat');
                  },
                ),
                CategoryButton(
                  label: 'Jetski',
                  imagePath: 'assets/50911.jpg',
                  onPressed: () {
                    navigateToThirdScreen(context, 'Jetski');
                  },
                ),
                CategoryButton(
                  label: 'Wassersportartikel',
                  imagePath: 'assets/699955.jpg',
                  onPressed: () {
                    navigateToThirdScreen(context, 'Wassersportartikel');
                  },
                ),
                CategoryButton(
                  label: 'Anglerequipment',
                  imagePath: 'assets/1687242.jpg',
                  onPressed: () {
                    navigateToThirdScreen(context, 'Anglerequipment');
                  },
                ),
                CategoryButton(
                  label: 'Sonstiges',
                  imagePath: 'assets/1203808.jpg',
                  onPressed: () {
                    navigateToThirdScreen(context, 'Sonstiges');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: 0, //  initialen Index nach Bedarf
        onItemTapped: (index) {
          //  Tippen auf das BottomNavigationBar-Element hier
        },
      ),
    );
  }
}

