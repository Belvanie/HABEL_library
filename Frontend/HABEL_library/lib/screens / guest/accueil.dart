import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class accueilScreen extends StatefulWidget{
  @override
  _accueilScreenState createState() => _accueilScreenState();
}

class _accueilScreenState extends State<accueilScreen> {
  String valeur = '';

  // Reaction des icons apres cliquage.
  void affiche(String a){
    setState(() {
      valeur = a;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                '$valeur',
            ),
          ],
        ),
      ),

      persistentFooterButtons: [
        IconButton(
          onPressed: ()=>affiche('Accueil'),
          icon: Icon(
            Icons.home,
            color: Colors.pink,
          ),
        ),

        IconButton(
          onPressed: ()=>affiche('Categories'),
          icon: Icon(
            Icons.dashboard,
            color: Colors.blue,
          ),
        ),

        IconButton(
          onPressed: ()=>affiche('Achat'),
          icon: Icon(
            Icons.local_grocery_store,
            color: Colors.blue,
          ),
        ),

        IconButton(
          onPressed: ()=>affiche('Ma librairie'),
          icon: Icon(
            Icons.person,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
