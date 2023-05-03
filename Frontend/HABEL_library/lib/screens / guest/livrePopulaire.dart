
import 'package:flutter/material.dart';

import '../livre/livres.dart';

class LivrePopulaire extends StatelessWidget {
  LivrePopulaire({Key? key}) : super(key: key);

  final List<Livres> livres = Livres.livres();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 235,
      //color: Colors.red,
      padding: const EdgeInsets.all(10),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: livres
            .map((livres) => Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(bottom: 20),
                child: Row(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      livres.bgImage,
                      width: 60,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            livres.name,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  livres.type,
                                  style: TextStyle(
                                    color: Colors.grey.withOpacity(0.8),
                                  ),
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: Colors.amber,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 7,
                                horizontal: 20,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Text(
                                'Lire',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],),
              ))
            .toList(),
      ),
    );
  }
}
