
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget{
  final Function(int) onChangedStep;

  AuthScreen({
    Key? key,
    required this.onChangedStep,
  }) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final RegExp emailRegex = RegExp(r"[a-z0-9\._-]+@[a-z0-9\._-]+\.[a-z]+");
  final RegExp pwdRegex = RegExp(r"[a-z0-9@&+#$%=?!^]+"); //^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{8,})/
  final RegExp nomRegex = RegExp(r"[a-zA-Z0-9._-]+");
  final RegExp sexRegex = RegExp(r"[a-zA-Z]+");

  bool _isSecret = true;

  String _email = '';
  String _password = '';
  String _nom = '';
  String _sex = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 0.0,
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () => widget.onChangedStep(0),
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: 30.0
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center, //Pour que chaque phrase commence toujours a gauche
              children: [
                RichText(
                  text: TextSpan(
                      text: 'habel'.toUpperCase(),
                      style: TextStyle(
                        color: Color(0xFFFF1493),//Theme.of(context).primaryColorDark,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                            text: 'streaming'.toLowerCase(),
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontStyle: FontStyle.italic,
                            )
                        ),
                      ],
                  ),
                ),
                SizedBox(
                  height: 30.0, // Widget qui te permet de mettre des espaces.
                ),
                Text(
                  'Inscription',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF000000),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),

                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextFormField(
                        onChanged: (value) => setState(() => _nom = value),
                        validator: (value) => value!.isEmpty || !nomRegex.hasMatch(value)
                            ? 'Entrer un nom valide svp'
                            : null ,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFDCDCDC),
                          hintText: 'Votre nom',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.pink, // Couleur de bordure par defaut
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.green, // Couleur de bordure lorsqu'on est sur l'element
                            ),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 20.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25.0,
                      ),

                      TextFormField(
                        onChanged: (value) => setState(() => _email = value),
                        validator: (value) => value!.isEmpty || !emailRegex.hasMatch(value)
                            ? 'Entrer un email valide svp'
                            : null ,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFDCDCDC),
                          hintText: 'Adresse mail',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.pink, // Couleur de bordure par defaut
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.green, // Couleur de bordure lorsqu'on est sur l'element
                            ),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 20.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25.0,
                      ),

                      TextFormField(
                        onChanged: (value) => setState(() => _sex = value),
                        validator: (value) => value!.isEmpty || !sexRegex.hasMatch(value)
                            ? 'Feminin Ou Masculin?'
                            : null ,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFDCDCDC),
                          hintText: 'Votre sex :Feminin/Masculin',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Theme.of(context).primaryColorDark, // Couleur de bordure par defaut
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.green, // Couleur de bordure lorsqu'on est sur l'element
                            ),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 20.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25.0,
                      ),

                      TextFormField(
                        onChanged: (value) => setState(() => _password = value),
                        validator: (value) => value!.isEmpty || !pwdRegex.hasMatch(value) || value.length < 6 //!emailRegex.hasMatch(value)
                            ? 'Entrer un mot de passe valide svp'
                            : null ,
                        obscureText: _isSecret,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          suffixIcon: InkWell(
                            onTap: () =>
                                setState(() => _isSecret = !_isSecret),
                            child: Icon(!_isSecret
                            ? Icons.visibility
                            : Icons.visibility_off
                            ),
                          ),
                          filled: true,
                          fillColor: Color(0xFFDCDCDC),
                          hintText: 'Mot de passe',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.pink,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.green,
                            ),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 20.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25.0,
                      ),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).primaryColorDark, //Color(0xFFFF1493),
                          padding: EdgeInsets.symmetric(
                            vertical: 15.0,
                          ),
                        ),
                        onPressed: !emailRegex.hasMatch(_email) || !pwdRegex.hasMatch(_password)
                            ? null
                            : () {
                                if (_formKey.currentState!.validate()) {
                                  print(_email);
                                  print(_password);
                                  widget.onChangedStep(2);
                                }
                              },
                        /*onPressed: () {
                          if (_formKey.currentState!.validate()){
                            print(_email);
                            print(_password);
                          }
                        },*/
                        child: Text(
                          'Creer un compte',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF000000),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),

                Text(
                  'Se connecter',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}