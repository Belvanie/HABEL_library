import 'package:StreamLib/frontHabel/categories/categories.dart';
import 'package:StreamLib/frontHabel/liaison/guest.dart';
import 'package:StreamLib/frontHabel/maLibrairie/maLibrairie.dart';
import 'package:flutter/material.dart';

import 'frontHabel/accueil/accueil.dart';
import 'frontHabel/achat/achat.dart';
import 'frontHabel/authentification/navigation_bar.dart';

//--no-sound-null-safety
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  //int id=0;
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/accueil': (context) => const AccueilScreen(),
        '/categories': (context) => CategoriesScreen(),
        '/achat': (context) => AchatScreen(),
        '/maLibrairie': (context) => MaLibrairie(),
      },
      debugShowCheckedModeBanner: false,
      title: 'HABEL LIBRARY',
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFffffe0)), //0xFF00bfff
      home: GuestScreen(),
    );
  }
}

