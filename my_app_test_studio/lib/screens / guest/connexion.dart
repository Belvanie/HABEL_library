
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class connexionScreen extends StatefulWidget{
  final Function(int) onChangedStep;

  connexionScreen({
    Key? key,
    required this.onChangedStep,
  }) : super(key: key);

  @override
  _connexionScreenState createState() => _connexionScreenState();
}

class _connexionScreenState extends State<connexionScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final RegExp emailRegex = RegExp(r"[a-z0-9\._-]+@[a-z0-9\._-]+\.[a-z]+");
  final RegExp pwdRegex = RegExp(r"[a-z0-9]+[@&+#$%=?!^]+[a-z0-9]+");

  bool _isSecret = true;

  String _email = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                  'Connexion',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF000000),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
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
                        height: 35.0,
                      ),

                      TextFormField(
                        onChanged: (value) => setState(() => _password = value),
                        validator: (value) => value!.isEmpty || !pwdRegex.hasMatch(value) || value.length < 6
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
                        height: 35.0,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFF1493),
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
                            widget.onChangedStep(1);
                          }
                        },
                        /*onPressed: () {
                          if (_formKey.currentState!.validate()){
                            print(_email);
                            print(_password);
                          }
                        },*/
                        child: Text(
                          'Se connecter',
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
                  height: 12.0,
                ),
                Text(
                  'Mot de passe oublié ?',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'ou'.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Créer un compte',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
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