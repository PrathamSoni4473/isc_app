import 'package:flutter/material.dart';
import './screens/isc_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: ThemeData.light().textTheme.copyWith(
              headline1: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Montserrat'),
              headline2: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat'),
              subtitle1:
                  const TextStyle(fontSize: 14, fontFamily: 'Montserrat'),
              subtitle2:
                  const TextStyle(fontSize: 12, fontFamily: 'Montserrat'),
            ),
      ),
      home: iscHomepage(),
    );
  }
}
