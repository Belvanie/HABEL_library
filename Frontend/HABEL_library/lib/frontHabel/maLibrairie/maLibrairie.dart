// @dart=2.9
import 'package:flutter/material.dart';

class MaLibrairie extends StatefulWidget{
  const MaLibrairie({Key key}) : super(key: key);

  @override
  MaLibrairieState createState() => MaLibrairieState();
}

class MaLibrairieState extends State<MaLibrairie> {

  /*List <BottomNavigationBarItem> _item = [];
  int id = 0;
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

  void openPage(int id3){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const AccueilScreen(),
      ),
    );
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, //.withBlue(1),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height, //600
          color: Colors.white,
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerRight,
                height: 100,
                color: Colors.blue,
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100.0),
                      child: Image.asset(
                        "images/avatar.jpg",
                        height: 50,
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'Belvanie   ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 50),
                    const Icon(
                      Icons.language,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 15),
                    const Icon(
                      Icons.light_mode,
                      color: Colors.white,
                      weight: 30,
                    ),
                    const SizedBox(width: 15),
                    const Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    ListTile(
                      leading: Icon(Icons.favorite_outlined, color: Colors.pink, size: 25,),
                      title: Text(
                        'Liste des favorits',
                        style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Divider(height: 16, color: Colors.blue, thickness: 0.3),

                    ListTile(
                      leading: Icon(Icons.book_rounded, color: Colors.pink, size: 25,),
                      title: Text(
                        'Mes livres',
                        style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Divider(height: 16, color: Colors.pink, thickness: 0.3),

                    ListTile(
                      leading: Icon(Icons.timer, color: Colors.pink, size: 25,),
                      title: Text(
                        'Lu recement',
                        style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Divider(height: 10, color: Colors.blue, thickness: 0.3),

                    ListTile(
                      leading: Icon(Icons.category, color: Colors.pink, size: 25,),
                      title: Text(
                        'Categories',
                        style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Divider(height: 10, color: Colors.pink, thickness: 0.3),

                    ListTile(
                      leading: Icon(Icons.save, color: Colors.pink, size: 25,),
                      title: Text(
                        'Livres enregistrer',
                        style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Divider(height: 10, color: Colors.blue, thickness: 0.3),

                    ListTile(
                      leading: Icon(Icons.settings, color: Colors.pink, size: 25,),
                      title: Text(
                        'Reglages',
                        style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

      ),

      /*bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        items: _item,
        currentIndex: id,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        onTap: (int item){
          setState(() {
            id = item;
            int a = id + 1;
            _value = 'clique sur ${a.toString()}';
          });
          //openPage(id);
        },
      ),*/
    );
  }
}

Widget header(){
  return Padding(
    padding: const EdgeInsets.only(
      //top: MediaQuery.of(context).padding.top,
      left: 25,
      right: 25,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100.0),
          child: Image.asset(
            "images/avatar.jpg",
            height: 70,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const[
            Text(
              'Bienvenue,',
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Que recherchez-vous?",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black
              ),
            ),
          ],
        ),

      ],),
  );
}

Widget viewer(){
  return ListView(
    children: const <Widget>[
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
