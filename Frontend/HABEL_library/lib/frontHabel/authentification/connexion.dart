
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class connexionScreen extends StatefulWidget{
  final Function(int) onChangedStep;

  const connexionScreen({
    Key? key,
    required this.onChangedStep,
  }) : super(key: key);

  @override
  _connexionScreenState createState() => _connexionScreenState();
}

class _connexionScreenState extends State<connexionScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final RegExp emailRegex = RegExp(r"[a-z0-9\._-]+@[a-z0-9\._-]+\.[a-z]+");
  final RegExp pwdRegex = RegExp(r"[a-z0-9@&+#$%=?!^]+");    //(r"(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#.%^&*])(?=.{8,})");;

  bool _isSecret = true;
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
              horizontal: 30.0
          ),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center, //Pour que chaque phrase commence toujours a gauche
            children: <Widget>[
              const SizedBox(
                height: 30.0, // Widget qui te permet de mettre des espaces.
              ),
              RichText(
                text: TextSpan(
                  text: 'habel'.toUpperCase(),
                  style: const TextStyle(
                    color: Color(0xFFFF1493),//Theme.of(context).primaryColorDark,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                        text: 'streaming'.toLowerCase(),
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontStyle: FontStyle.italic,
                        )
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30.0, // Widget qui te permet de mettre des espaces.
              ),
              const Text(
                'Connexion',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF000000),
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),

              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextFormField(
                      textAlign: TextAlign.left,
                      decoration: const InputDecoration(
                        labelText: 'Nom',
                        hintText: 'Entrer votre nom',
                        icon: Icon(
                          Icons.person,
                          color: Colors.blue,
                          size: 30,
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),

                    TextFormField(
                      onChanged: (value) => setState(() => _password = value),
                      validator: (value) => value!.isEmpty || !pwdRegex.hasMatch(value) //|| value.length < 6
                          ? 'Entrer un mot de passe valide svp'
                          : null ,
                      obscureText: _isSecret,
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(
                        suffixIcon: InkWell(
                          onTap: () =>
                              setState(() => _isSecret = !_isSecret),
                          child: Icon(!_isSecret
                              ? Icons.visibility
                              : Icons.visibility_off
                          ),
                        ),
                        labelText: 'Mot de passe',
                        hintText: 'Votre mot de passe',
                        icon: const Icon(
                          Icons.lock,
                          color: Color(0xFFFF1493),
                          size: 30,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 35.0,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,//Color(0xFFFF1493),
                        padding: const EdgeInsets.symmetric(
                          vertical: 15.0,
                        ),
                      ),
                      onPressed: !pwdRegex.hasMatch(_password)
                          ? null
                          : () {
                        if (_formKey.currentState!.validate()) {
                          print(_password);
                          widget.onChangedStep(3);
                        }
                      },
                      /*onPressed: () {
                        if (_formKey.currentState!.validate()){
                          print(_password);
                          widget.onChangedStep(1);
                        }
                      },*/
                      child: const Text(
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
              const SizedBox(
                height: 5.0,
              ),
              const Text(
                'Mot de passe oublié ?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              /*Text(
                'ou'.toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),*/
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, widget.onChangedStep(1));
                },
                child: const Text(
                  "Creer un compte",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}