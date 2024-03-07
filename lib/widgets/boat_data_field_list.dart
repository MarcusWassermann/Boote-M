import 'package:boote_m/widgets/boatdatafield.dart';
import 'package:flutter/material.dart';


class BoatDataFieldsList extends StatelessWidget {
  const BoatDataFieldsList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BoatDataField(index: 0, label: 'Name des Boots'),
        BoatDataField(index: 1, label: 'Marke'),
        BoatDataField(index: 2, label: 'Modell'),
        BoatDataField(index: 3, label: 'Baujahr'),
        BoatDataField(index: 4, label: 'Länge'),
        BoatDataField(index: 5, label: 'Preis'),
        BoatDataField(index: 6, label: 'Zustand'),
        BoatDataField(index: 7, label: 'Motorart'),
        BoatDataField(index: 8, label: 'Kraftstoff'),
        BoatDataField(index: 9, label: 'Leistung'),
        BoatDataField(index: 10, label: 'Segel Anzahl'),
        BoatDataField(index: 11, label: 'Segel qm'),
      ],
    );
  }
}
