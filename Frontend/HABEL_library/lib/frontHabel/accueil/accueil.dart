import 'package:StreamLib/frontHabel/accueil/recherche.dart';
import 'package:flutter/material.dart';
import 'bodyAcc.dart';
import 'header.dart';

class AccueilScreen extends StatefulWidget{
  const AccueilScreen({super.key});

  @override
  AccueilScreenState createState() => AccueilScreenState();
}

class AccueilScreenState extends State<AccueilScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                const SizedBox(height: 20),
                const HeaderSection(),
                const SearchSection(),
                BodyAccSection(),
                Transform(
                    transform: Matrix4.identity()..rotateZ(41),
                    origin: const Offset(30, 10),
                    /*child: Image.asset(
                      'images/bg-liquide4.jpeg',
                       width: 200,
                    ),*/
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

