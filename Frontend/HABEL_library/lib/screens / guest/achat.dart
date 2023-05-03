// @dart=2.9

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class achatScreen extends StatefulWidget{
  @override
  _achatScreenState createState() => _achatScreenState();
}

class _achatScreenState extends State<achatScreen> {

  List <BottomNavigationBarItem> _item = [];
  int _id = 0;
  String _value = '';

  _achatScreenState();

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

  /*Widget movies(String name, String image, String movie){
    return Padding(
        padding: EdgeInsets.all(5.0),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.black,
            backgroundImage: NetworkImage(image),
            radius: 30,
            child: Text(
              image.length==0 ?name[0].toUpperCase():''
              '', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
          ),
          title: Text(name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
          subtitle: Text(movie, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.pink),),
        ),
    );
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'StreamLib',
        ),

      ),
      body: Container(
        margin: EdgeInsets.all(10),
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

        /*children: <Widget>[
          movies(
            'Titre livre',
            "",
            "Prix"
          ),
          Divider(
            height : 10,
            color : Colors.black,
          ),
          movies(
              'Titre livre',
              "",
              "Prix"
          ),
          Divider(
            height : 10,
            color : Colors.black,
          ),
          movies(
              'Titre livre',
              "",
              "Prix"
          ),
          Divider(
            height : 10,
            color : Colors.black,
          ),
          movies(
              'Titre livre',
              "",
              "Prix"
          ),
          Divider(
            height : 10,
            color : Colors.black,
          ),
          movies(
              'Titre livre',
              "",
              "Prix"
          ),
          Divider(
            height : 10,
            color : Colors.black,
          ),
          movies(
              'Titre livre',
              "",
              "Prix"
          ),
          Divider(
            height : 10,
            color : Colors.black,
          ),
          movies(
              'Titre livre',
              "",
              "Prix"
          ),
          Divider(
            height : 10,
            color : Colors.black,
          ),
          movies(
              'Titre livre',
              "",
              "Prix"
          ),
          Divider(
            height : 10,
            color : Colors.black,
          ),
        ],*/
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
    'assets/images/livre1.jpeg',
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
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          verif.auteur,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          verif.maisonEdition,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 30,)
      ],
    );
  }
}