import 'package:flutter/material.dart';
import '../models/category.dart';

import '../commons.dart';
import './custom_text.dart';

List<Category> categoriesList = [
  Category(name: "Salad", image: "salad.png"),
  Category(name: "Steak", image: "steak.png"),
  Category(name: "Fast Food", image: "sandwich.png"),
  Category(name: "Deserts", image: "ice-cream.png"),
  Category(name: "Beer", image: "pint.png"),
  Category(name: "Sea Foods", image: "fish.png"),
];

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: white,
                    boxShadow: [
                      BoxShadow(
                        color: grey,
                        offset: Offset(4, 6),
                        blurRadius: 12,
                      )
                    ], //BoxShadow
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(4),
                    child: Image.asset(
                      "images/${categoriesList[index].image}",
                      width: 60,
                    ),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                CustomText(
                  text: categoriesList[index].name,
                  size: 16,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
