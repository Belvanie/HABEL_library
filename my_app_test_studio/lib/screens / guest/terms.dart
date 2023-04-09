import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TermsScreen extends StatefulWidget{
  TermsScreen({Key? key}) : super(key: key);

  @override
  _TermsScreenState createState() => _TermsScreenState();
}

class _TermsScreenState extends State<TermsScreen> {
  late ScrollController _scrollController;
  bool _termslue = false;

  @override
  void initState(){
    super.initState();
    _scrollController = ScrollController();

    _scrollController.addListener(() {
      if (_scrollController.offset >= _scrollController.position.maxScrollExtent && !_scrollController.position.outOfRange){
        setState(() => _termslue = true);
      }
    });
  }

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            titleSpacing: 0.0,
            elevation: 0,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            title: Text(
              'Terms & Conditions',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {  },),
          ),
          body: Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              bottom: 15.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    child: SingleChildScrollView(
                      controller: _scrollController,
                      physics: const AlwaysScrollableScrollPhysics(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant Condiition d'utilisation pour nos utilisateurs que nous aimons tant ",
                          ),
                        ],
                      ),
                    ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                ElevatedButton(
                  onPressed: !_termslue ? null : () => print('accept'),
                  child: Text(
                      'accepte & continue'.toUpperCase(),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                    elevation: 0,
                    backgroundColor: Theme.of(context).primaryColor,
                    padding: EdgeInsets.symmetric(
                      vertical: 15.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}