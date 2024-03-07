import 'package:boote_m/screens/Third_screen.dart';
import 'package:boote_m/screens/fourth_screen.dart';
import 'package:flutter/material.dart';
import '../screens/home_screen.dart';



void navigateToHomeScreen(BuildContext context) {
  Navigator.pushReplacement(
    context,
    PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const HomeScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(-1.0, 0.0),
            end: Offset.zero,
          ).animate(CurvedAnimation(
            parent: animation,
            curve: Curves.linear,
            reverseCurve: Curves.linear,
          )),
          child: child,
        );
      },
      transitionDuration: const Duration(seconds: 3),
    ),
  );
}

void navigateToThirdScreen(BuildContext context, String category) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => ThirdScreen(category: category),
      settings: const RouteSettings(arguments: 5000),
    ),
  );
}

void navigateToFourthScreen(BuildContext context) {
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
