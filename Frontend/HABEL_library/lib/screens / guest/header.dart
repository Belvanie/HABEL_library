import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget{
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const[
              Text(
                'Bienvenue,',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Que recherchez-vous?",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white
                ),
              ),
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(100.0),
            child: Image.asset(
              "images/avatar.jpg",
              height: 50,
            ),
          )
      ],),
    );
  }
}