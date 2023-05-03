import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class livreScreen extends StatefulWidget{
  @override
  _livreScreenState createState() => _livreScreenState();
}

//#007FFF
class _livreScreenState extends State<livreScreen> {

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBF5F4),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Color(0xFFFA25CB),
          onPressed: () => print('nothing'),//widget.onChangedStep(1),
        ),
        backgroundColor: Color(0xFFFBF5F4),
        actions: <Widget>[
          Icon(
            Icons.dangerous,
            color: Colors.black,
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          //imageCaroussel,
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        items: _item,
        currentIndex: _id,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        selectedItemColor: Color(0XFFFA25CB),
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
