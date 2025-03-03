import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchSection extends StatelessWidget{
  const SearchSection({super.key});

  Widget build(BuildContext context){
    return Container(
      height: 100,
      //color: Colors.yellow,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      child: Stack(
        children: [
          TextField(
            decoration: InputDecoration(
             fillColor: Colors.white,
             filled: true,
             border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(20),
               borderSide: const BorderSide(
                 width: 0,
                 style: BorderStyle.none,
               ),
             ),
              prefixIcon: const Icon(
                Icons.search_outlined,
                size: 30,
                //color: Colors.blue,
              ),
              hintText: 'Recherche un livre',
              hintStyle: TextStyle(
                fontSize: 14,
                color: Colors.grey.withOpacity(0.7)
              )
            ),
          ),
          Positioned(
            right: 12,
            bottom: 10,
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.pink
              ),
              child: const Icon(
                Icons.mic_outlined,
                color: Colors.white,
                size: 15,
              ),
            ),
          )
        ],
      ),
    );
  }
}