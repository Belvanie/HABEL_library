// @dart=2.9

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class accueilScreen extends StatefulWidget{
  @override
  _accueilScreenState createState() => _accueilScreenState();
}

class _accueilScreenState extends State<accueilScreen> {

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
          'StreamLib',
        ),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$_value',
              style: TextStyle(color: Colors.green, fontSize: 15),
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
