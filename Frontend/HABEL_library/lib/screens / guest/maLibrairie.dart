// @dart=2.9

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class maLibrairieScreen extends StatefulWidget{
  @override
  _maLibrairieScreenState createState() => _maLibrairieScreenState();
}

class _maLibrairieScreenState extends State<maLibrairieScreen> {

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Mon profil',
        ),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Ma StreamLib',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ],
            ),
            Container(
              height: 400,
              width: 350,
              //color: none,
              child: viewer(),
            )
          ],
        ),
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

Widget viewer(){
  return ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.favorite_outlined, color: Colors.pink, size: 25,),
        title: Text(
          'Liste des favorits',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
      ListTile(
        leading: Icon(Icons.person, color: Colors.pink, size: 25,),
        title: Text(
          'Auteur suivi',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
      ListTile(
        leading: Icon(Icons.timer, color: Colors.pink, size: 25,),
        title: Text(
          'Lu recement',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
    ],
  );

}