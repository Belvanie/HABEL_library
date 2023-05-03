import 'package:StreamLib/screens%20/livre/livres.dart';
import 'package:flutter/material.dart';

class DetailLivre extends StatelessWidget {
  const DetailLivre({Key? key, required this.livres}) : super(key: key);

  final Livres livres;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(livres.name),
      ),
    );
  }
}
