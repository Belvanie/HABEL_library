import 'package:StreamLib/screens%20/%20guest/bodyAcc.dart';
import 'package:StreamLib/screens%20/%20guest/header.dart';
import 'package:StreamLib/screens%20/%20guest/recherche.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class accueilScreen extends StatefulWidget{
  /*final Function(int) onChangedStep;

  accueilScreen({
    Key? key,
    required this.onChangedStep,
  }) : super(key: key);*/

  @override
  _accueilScreenState createState() => _accueilScreenState();
}

class _accueilScreenState extends State<accueilScreen> {

  Widget imageCaroussel = SizedBox(
    height: 150,
    child: Carousel(
      boxFit: BoxFit.fill,
      images: const [
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

  /*final List<Map> mesLivres =
      List.generate(30,(index) => {"id": index, "name": "Product $index"})
          .toList();*/

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


