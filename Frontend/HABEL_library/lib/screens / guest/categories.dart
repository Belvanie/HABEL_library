import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class categoriesScreen extends StatefulWidget{
  /*final Function(int) onChangedStep;

  categoriesScreen({
    Key? key,
    required this.onChangedStep,
  }) : super(key: key);*/

  @override
  _categoriesScreenState createState() => _categoriesScreenState();
}

class _categoriesScreenState extends State<categoriesScreen> {

  Widget imageCaroussel = Container(
    height: 150,
    child: Carousel(
      boxFit: BoxFit.fill,
      images: [
        AssetImage('images/image1.jpeg'),
        AssetImage('images/image2.jpeg'),
        AssetImage('images/image3.jpeg'),
        AssetImage('images/image4'),
        AssetImage('images/image5.jpeg'),
      ],
    ),
  );
  List <BottomNavigationBarItem> _item = [];
  int _id = 0;
  String _value = '';

  @override
  void initState() {

    super.initState();
    _item = [];
    _item.add(
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: 'Accueil',
        )
    );
    _item.add(
      BottomNavigationBarItem(
        icon: Icon(Icons.dashboard,
        ),
        label: 'Categories',
      ),
    );
    _item.add(
      BottomNavigationBarItem(
        icon: Icon(Icons.local_grocery_store,
        ),
        label: 'Achat',
      ),
    );
    _item.add(
      BottomNavigationBarItem(
        icon: Icon(Icons.person,
        ),
        label: 'Ma Librairie',
      ),
    );
  }

  final List<Map> mesLivres =
  List.generate(30,(index) => {"id": index, "name": "Product $index"})
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'StreamLib',
        ),

      ),
      body: Container(
        margin: EdgeInsets.all(10),
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
        ),

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
        ),*/
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        items: _item,
        currentIndex: _id,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        onTap: (int item){
          setState(() {
            _id = item;
            int a = _id + 1;
            _value = 'clique sur ${a.toString()}';
          });
        },
      ),
    );
  }
}

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

