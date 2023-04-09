import 'package:flutter/material.dart';
import 'package:my_app_test_studio/screens%20/%20guest/Guest.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HABEL LIBRARY',
      theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFFffffe0)), //0xFF00bfff
      home: GuestScreen(),
    );
  }
}

