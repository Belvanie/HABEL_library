import 'package:StreamLib/frontHabel/accueil/accueil.dart';
import 'package:StreamLib/frontHabel/achat/achat.dart';
import 'package:StreamLib/frontHabel/categories/categories.dart';
import 'package:StreamLib/frontHabel/maLibrairie/maLibrairie.dart';
import 'package:flutter/material.dart';

class NavigationBar1 extends StatefulWidget {
  final Function(int) onChangedStep;

  const NavigationBar1({
    Key? key,
    required this.onChangedStep
  }): super(key: key);

  @override
  _NavigationBar1State createState() => _NavigationBar1State();
}

class _NavigationBar1State extends State<NavigationBar1> {
  int index = 0;
  final screens = [
    const AccueilScreen(),
    const CategoriesScreen(),
    const AchatScreen(),
    const MaLibrairie(),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
    body: screens[index],
    bottomNavigationBar: NavigationBarTheme(
      data: NavigationBarThemeData(
        indicatorColor: Colors.blue, //.shade100,
        labelTextStyle: MaterialStateProperty.all(
          const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.pink),
        ),
      ),
      child: NavigationBar(
        height: 60,
        backgroundColor: Colors.white,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        selectedIndex: index,
        animationDuration: const Duration(seconds: 1),
        onDestinationSelected: (index) =>
          setState(() => this.index = index),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Accueil',
          ),
          NavigationDestination(
            icon: Icon(Icons.dashboard_outlined),
            selectedIcon: Icon(Icons.dashboard),
            label: 'Categories',
          ),
          NavigationDestination(
            icon: Icon(Icons.local_grocery_store_outlined),
            selectedIcon: Icon(Icons.local_grocery_store),
            label: 'Achat',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outlined),
            selectedIcon: Icon(Icons.person),
            label: 'Ma Librairie',
          ),
        ],
      ),
    ),
  );
}





























/* import 'package:StreamLib/frontHabel/accueil/nouveautes.dart';
import 'package:StreamLib/frontHabel/achat/achat.dart';
import 'package:StreamLib/frontHabel/categories/categories.dart';
import 'package:StreamLib/frontHabel/maLibrairie/maLibrairie.dart';
import 'package:flutter/material.dart';

import '../accueil/accueil.dart';
import '../accueil/header.dart';
import '../accueil/recherche.dart';

class BottomNavigationBar1 extends StatefulWidget{
  const BottomNavigationBar1({super.key});

  @override
  _BottomNavigationBar1State createState() =>_BottomNavigationBar1State();
}

class _BottomNavigationBar1State extends State<BottomNavigationBar1>{

  int _currentIndex =0;

  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);



  /*static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 1: Accueil',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Other',
      style: optionStyle,
    ),
  ];*/




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SingleChildScrollView(
        child: AccueilScreen(),//_widgetOptions.elementAt(_currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Categories',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.local_grocery_store),
            label: 'Achat',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Ma Librairie',
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
          //Naviguer vers les routes correspondantes
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/accueil');
              break;
            case 1:
              Navigator.pushNamed(context, '/categories');
              break;
            case 2:
              Navigator.pushNamed(context, '/achat');
              break;
            case 3:
              Navigator.pushNamed(context, '/maLibrairie');
              break;
            default:
              break;
          }
        },
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.blue,
      ),
    );
  }
}
*/
