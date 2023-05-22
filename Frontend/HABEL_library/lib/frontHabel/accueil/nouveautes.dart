import 'package:flutter/material.dart';

import '../livre/detail.dart';
import '../livre/livres.dart';

class Nouveautes extends StatelessWidget {
  Nouveautes({Key? key}) : super(key: key);

  final List<Livres> livres = Livres.livres();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 200,
        //color: Colors.red,
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) => GestureDetector(
            onTap: (() => Navigator.of(context).push(MaterialPageRoute(
              builder: ((context) => DetailLivre(livres: livres[index])),
            ))),
            child: Card(
                elevation: 7,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  padding: const EdgeInsets.all(7),
                  //color: Colors.blue,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Hero(
                      tag: livres[index].name,
                      child: Image.asset(livres[index].bgImage),
                    ),
                  ),
                )
            ),
          )),
          separatorBuilder: ((context, index) => const SizedBox(width: 15)),
          itemCount: livres.length,
        ),
      ),
    );
  }
}
