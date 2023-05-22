import 'package:StreamLib/frontHabel/authentification/navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../authentification/Auth.dart';
import '../authentification/connexion.dart';
import '../authentification/terms.dart';

class GuestScreen extends StatefulWidget{

  @override
  _GuestScreenState createState() => _GuestScreenState();
}

class _GuestScreenState extends State<GuestScreen> {
  List<Widget> _widgets = [];
  int _indexSelected = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _widgets.addAll([
      connexionScreen(
          onChangedStep: (index) => setState(() => _indexSelected = index),
      ),
      AuthScreen(
          onChangedStep: (index) => setState(() => _indexSelected = index),
      ),
      TermsScreen(
          onChangedStep: (index) => setState(() => _indexSelected = index),
      ),
      NavigationBar1(
        onChangedStep: (index) => setState(() => _indexSelected = index),
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _widgets.elementAt(_indexSelected),
    );
  }
}

