import 'package:StreamLib/frontHabel/accueil/accueil.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class CategoriesScreen extends StatefulWidget{
  const CategoriesScreen({super.key});

  //final int id1;
  //const CategoriesScreen({super.key, required this.id1});

  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {

  /*List <BottomNavigationBarItem> _item = [];
  int id = 0;

  @override
  void initState() {

    super.initState();
    _item = [];
    _item.add(
        const BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: 'Accueil',
        )
    );
    _item.add(
      const BottomNavigationBarItem(
        icon: Icon(Icons.dashboard,
        ),
        label: 'Categories',
      ),
    );
    _item.add(
      const BottomNavigationBarItem(
        icon: Icon(Icons.local_grocery_store,
        ),
        label: 'Achat',
      ),
    );
    _item.add(
      const BottomNavigationBarItem(
        icon: Icon(Icons.person,
        ),
        label: 'Ma Librairie',
      ),
    );
  }
  void openPage(int id2){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AchatScreen(),
      ),
    );
  }*/

  final List<Map> mesLivres =
  List.generate(30,(index) => {"id": index, "name": "Product $index"})
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Categories'),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 35,
            child: Container(
              color: Colors.blue,
              //padding: const EdgeInsets.all(40),
              //decoration: const BoxDecoration(
                //color: Colors.blue,
              //),
              child: ListView(
                children: [
                  const SizedBox(height: 30),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 10,
                    ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Sciences',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            decoration: TextDecoration.none,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                            //Navigator.push(context, AccueilScreen())
                              launchUrl('https://fr.wikipedia.org/wiki/Manga' as Uri);
                            },
                        ),
                      ],
                    ),
                  ),
                ),
                const Divider(height: 16, color: Colors.white, thickness: 0.5),

                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 7,
                    horizontal: 15,
                  ),
                  child: const Text(
                    'Romans',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
                const Divider(height: 16, color: Colors.white, thickness: 0.5),

                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 7,
                    horizontal: 15,
                  ),
                  child: const Text(
                    'Histoires',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
                const Divider(height: 16, color: Colors.white, thickness: 0.5),

                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 7,
                    horizontal: 15,
                  ),
                  child: const Text(
                    'Animes',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
                const Divider(height: 16, color: Colors.white, thickness: 0.5),

                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 10,
                  ),
                  child: const Text(
                    'Blagues',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
                const Divider(height: 16, color: Colors.white, thickness: 0.5),

                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 10,
                  ),
                  child: const Text(
                    'Theatres',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
                const Divider(height: 16, color: Colors.white, thickness: 0.5),

                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 10,
                  ),
                  child: const Text(
                    'Mangas',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
                const Divider(height: 16, color: Colors.white, thickness: 0.5),

                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 10,
                  ),
                  child: const Text(
                    'Mangas',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
                const Divider(height: 16, color: Colors.white, thickness: 0.5),

                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 10,
                  ),
                  child: const Text(
                    'Mangas',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
                const Divider(height: 16, color: Colors.white, thickness: 0.5),

                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 10,
                    ),
                    child: const Text(
                      'Mangas',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const Divider(height: 16, color: Colors.white, thickness: 0.5),

                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 10,
                    ),
                    child: const Text(
                      'Mangas',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const Divider(height: 16, color: Colors.white, thickness: 0.5),
              ],
            ),
            ),
          ),

        Expanded(
          flex: 65,
          child: Container(
            color: Colors.white,
            /*child: Flexible(
              fit: FlexFit.loose,
              child: LivrePopulaire(),
            ),*/
          ),
        ),
     ],
    ),
    );
  }
}


/*
      body: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 120,
            //mainAxisExtent: 5.0,
            childAspectRatio: 0.6,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          itemCount: mesLivres.length,
          itemBuilder: (_, int index){
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              //height: 150,
              //width: 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(15),
              ),
            );
          },
        ),*/

/*child: StaggeredGrid.count(
          crossAxisCount: 4,
          mainAxisSpacing: 5.0,
          crossAxisSpacing: 5.0,
          //itemBuilder:
          children: const[
            StaggeredGridTile(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Tile(index: 1),
            )
          ],
        ),
      ),*/

/*
body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              //width: 120,
              decoration: const BoxDecoration(
                color: Colors.pink,
              ),
            ),
            Container(
              //padding: const EdgeInsets.all(40),
              height: 20,
              //width: 800,
              decoration: const BoxDecoration(
                color: Colors.green,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(40),
              //flex: 2,
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: ListView(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 10,
                    ),
                    child: const Text(
                      'Sciences',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const Divider(height: 16, color: Colors.white, thickness: 0.5),

                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 7,
                      horizontal: 15,
                    ),
                    child: const Text(
                      'Romans',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const Divider(height: 16, color: Colors.white, thickness: 0.5),

                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 7,
                      horizontal: 15,
                    ),
                    child: const Text(
                      'Histoires',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const Divider(height: 16, color: Colors.white, thickness: 0.5),

                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 7,
                      horizontal: 15,
                    ),
                    child: const Text(
                      'Animes',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const Divider(height: 16, color: Colors.white, thickness: 0.5),

                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 10,
                    ),
                    child: const Text(
                      'Blagues',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const Divider(height: 16, color: Colors.white, thickness: 0.5),

                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 10,
                    ),
                    child: const Text(
                      'Theatres',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const Divider(height: 16, color: Colors.white, thickness: 0.5),

                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 10,
                    ),
                    child: const Text(
                      'Mangas',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const Divider(height: 16, color: Colors.white, thickness: 0.5),

                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 10,
                    ),
                    child: const Text(
                      'Mangas',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const Divider(height: 16, color: Colors.white, thickness: 0.5),

                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 10,
                    ),
                    child: const Text(
                      'Mangas',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const Divider(height: 16, color: Colors.white, thickness: 0.5),

                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 10,
                    ),
                    child: const Text(
                      'Mangas',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const Divider(height: 16, color: Colors.white, thickness: 0.5),
                ],

              ),
            ),

/*class Info{
  String images;
  String titre;
  String auteur;
  String maisonEdition;
  Info({
    required this.images,
    required this.titre,
    required this.auteur,
    required this.maisonEdition,
  });
}
List<Info> infos = [
  Info(
      images: 'images/livre1.jpeg',
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

// Class pour l'affichage des livres
class Showinfo extends StatelessWidget {
  final Info? verif;

  const Showinfo([Key? key, this.verif]) : super(key: key);
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child : Image.network(verif!.images),
        ),
        Text(
          verif!.titre,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          verif!.auteur,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          verif!.maisonEdition,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 30,)
      ],
    );
  }
}*/
*/
