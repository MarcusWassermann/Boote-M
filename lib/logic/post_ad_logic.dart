import 'package:boote_m/screens/payment_screen.dart';
import 'package:flutter/material.dart';

class PostAdLogic {
  static void postAd(String adText, BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const PaymentScreen(adPrice: 1.99),
      ),
    );
  }
}
