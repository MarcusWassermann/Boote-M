// lib/data/mock_database.dart
import 'boat_details.dart';

class MockDatabase {
  static List<BoatDetails> getBoatDetails() {
    return [
      BoatDetails(
        category: 'Segelboot',
        name: 'Segelboot 1',
        image: 'assets/segelboot.jpg',
      ),
      BoatDetails(
        category: 'Motoryacht',
        name: 'Motoryacht 1',
        image: 'assets/motoryacht.jpg',
      ),
       //Weitere Bootsdetails für jede Kategorie hinzu...
    ];
  }
}
