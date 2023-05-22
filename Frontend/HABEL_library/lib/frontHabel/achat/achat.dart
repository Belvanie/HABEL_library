// @dart=2.9
import 'package:flutter/material.dart';

class AchatScreen extends StatefulWidget{
  const AchatScreen({Key key}) : super(key: key);

  //final int id2;
  //const AchatScreen({Key key, this.id2}) : super(key: key);

  @override
  _AchatScreenState createState() => _AchatScreenState();
}

class _AchatScreenState extends State<AchatScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'StreamLib',
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 120,
          //mainAxisExtent: 5.0,
          childAspectRatio: 0.6,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          ),
          itemCount: infos.length,
          itemBuilder: (BuildContext context, int index){
            //final Info verif;
            return Showinfos(
                verif: infos[index],
            );
            //staggeredTitleBuilder:(int index){}
          }
        ),
      ),
    );
  }
}


class Info{
  String images;
  String titre;
  String auteur;
  String maisonEdition;
  Info({
    this.images,
    this.titre,
    this.auteur,
    this.maisonEdition,
  });
}
List<Info> infos = [
  Info(
    images:
    'images/livre1.jpeg',
    titre: 'Titre 1',
    auteur: 'Auteur 1',
    maisonEdition: 'Maison 1',
  ),
  Info(
    images: 'images/livre2.jpeg',
    titre: 'Titre 1',
    auteur: 'Auteur 1',
    maisonEdition: 'Maison 1',
  ),
  Info(
    images: 'images/livre3.jpeg',
    titre: 'Titre 1',
    auteur: 'Auteur 1',
    maisonEdition: 'Maison 1',
  ),
  Info(
    images: 'images/livre4.jpeg',
    titre: 'Titre 1',
    auteur: 'Auteur 1',
    maisonEdition: 'Maison 1',
  ),
  Info(
    images: 'images/livre5.jpeg',
    titre: 'Titre 1',
    auteur: 'Auteur 1',
    maisonEdition: 'Maison 1',
  ),
  Info(
    images: 'images/livre6.jpeg',
    titre: 'Titre 1',
    auteur: 'Auteur 1',
    maisonEdition: 'Maison 1',
  ),
  Info(
    images: 'images/livre7.jpeg',
    titre: 'Titre 1',
    auteur: 'Auteur 1',
    maisonEdition: 'Maison 1',
  ),
  Info(
    images: 'images/livre8.jpeg',
    titre: 'Titre 1',
    auteur: 'Auteur 1',
    maisonEdition: 'Maison 1',
  ),
  Info(
    images: 'images/livre9.jpeg',
    titre: 'Titre 1',
    auteur: 'Auteur 1',
    maisonEdition: 'Maison 1',
  ),
];

class Showinfos extends StatelessWidget {
  final Info verif;

  const Showinfos({Key key, this.verif}) : super(key: key);
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child : Image.network(verif.images),
        ),
        Text(
          verif.titre,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          verif.auteur,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          verif.maisonEdition,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 30,)
      ],
    );
  }
}