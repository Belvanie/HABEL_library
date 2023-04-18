

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:StreamLib/screens%20/%20guest/Auth.dart';
import 'package:StreamLib/screens%20/%20guest/terms.dart';
import 'package:StreamLib/screens%20/%20guest/connexion.dart';

class GuestScreen extends StatefulWidget{
  GuestScreen({Key? key}) : super(key: key);

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
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _widgets.elementAt(_indexSelected),
    );
  }
}