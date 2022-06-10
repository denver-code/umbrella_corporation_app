import 'package:flutter/material.dart';
import 'package:umbrella_corporation_app/screens/cover_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Umbrella Corporation',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 0, 0, 0),
        primarySwatch: Colors.red,
        fontFamily: 'EurostileExtended',
      ),
      home: const CoverScreen(),
    );
  }
}
