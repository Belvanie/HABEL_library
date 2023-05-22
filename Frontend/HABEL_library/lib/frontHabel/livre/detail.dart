import 'package:flutter/material.dart';

import 'livres.dart';

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
