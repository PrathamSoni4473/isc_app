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
              headline3: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 63, 181, 255),
                  fontFamily: 'Montserrat'),
              headline4: const TextStyle(
                  fontSize: 15,
                  // fontWeight: FontWeight.bold,
                  // color: Color.fromARGB(255, 63, 181, 255),
                  fontFamily: 'Montserrat'),
              subtitle1:
                  const TextStyle(fontSize: 14, fontFamily: 'Montserrat'),
              subtitle2:
                  const TextStyle(fontSize: 12, fontFamily: 'Montserrat'),
              bodyText1: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat'),
              bodyText2:
                  const TextStyle(fontSize: 10, fontFamily: 'Montserrat'),
            ),
      ),
      home: iscHomepage(),
    );
  }
}
