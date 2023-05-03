import 'dart:math';
import 'package:StreamLib/screens%20/%20guest/livrePopulaire.dart';
import 'package:StreamLib/screens%20/%20guest/nouveautes.dart';
import 'package:flutter/material.dart';

class BodyAccSection extends StatelessWidget {
  BodyAccSection({super.key});

  final categories = [
    Container(
      padding: const EdgeInsets.symmetric(
        vertical: 7,
        horizontal: 15,
      ),
      decoration: BoxDecoration(
        color: Colors.pink,
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Text(
        'Histoire',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
    Container(
      padding: const EdgeInsets.symmetric(
        vertical: 7,
        horizontal: 15,
      ),
      decoration: BoxDecoration(
        color: Colors.pink,
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Text(
        'Romans',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
    Container(
      padding: const EdgeInsets.symmetric(
        vertical: 7,
        horizontal: 15,
      ),
      decoration: BoxDecoration(
        color: Colors.pink,
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Text(
        'Animes',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
    Container(
      padding: const EdgeInsets.symmetric(
        vertical: 7,
        horizontal: 15,
      ),
      decoration: BoxDecoration(
        color: Colors.pink,
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Text(
        'Blagues',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
    Container(
      padding: const EdgeInsets.symmetric(
        vertical: 7,
        horizontal: 15,
      ),
      decoration: BoxDecoration(
        color: Colors.pink,
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Text(
        'Theatres',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
    Container(
      padding: const EdgeInsets.symmetric(
        vertical: 7,
        horizontal: 15,
      ),
      decoration: BoxDecoration(
        color: Colors.pink,
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Text(
        'Mangas',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 70,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              //color: Colors.green,
            ),
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) => Column(
                    children: [
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: categories[index],
                      ),
                      const SizedBox(height: 10),
                    ],
                )),
                separatorBuilder: ((context,index) => const SizedBox(width: 0)),
                itemCount: categories.length,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: const Text(
              'Nouveautés',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Nouveautes(),

          const SizedBox(height: 15),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: const Text(
              'Livres populaires',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          LivrePopulaire(),
        ],
      ),
    );
  }
}
