import 'package:flutter/material.dart';
import '../models/products.dart';

import '../commons.dart';
import 'custom_text.dart';

List<Product> productList = [
  Product(
    name: "Ceareals",
    price: 5.99,
    rating: 4.2,
    vendor: "Health 101",
    wishList: false,
    image: "1.jpg",
  ),
  Product(
    name: "Taccos",
    price: 6.75,
    rating: 4.6,
    vendor: "Health 101",
    wishList: true,
    image: "5.jpg",
  ),
  Product(
    name: "Chicken",
    price: 7.86,
    rating: 4.9,
    vendor: "Health 101",
    wishList: true,
    image: "2.jpg",
  ),
];

class Featured extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: productList.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: EdgeInsets.all(8),
              child: Container(
                height: 350,
                width: 190,
                decoration: BoxDecoration(
                  color: white,
                  boxShadow: [
                    BoxShadow(
                      color: red,
                      offset: Offset(15, 5),
                      blurRadius: 30,
                    )
                  ], //BoxShadow
                ),
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      "images/${productList[index].image}",
                      height: 90,
                      width: 85,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomText(
                            text: productList[index].name,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: white,
                              boxShadow: [
                                BoxShadow(
                                  color: grey,
                                  offset: Offset(1, 1),
                                  blurRadius: 4,
                                )
                              ], //BoxShadow
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: productList[index].wishList
                                  ? Icon(
                                      Icons.favorite,
                                      color: red,
                                      size: 18,
                                    )
                                  : Icon(
                                      Icons.favorite_border,
                                      color: red,
                                      size: 18,
                                    ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: CustomText(
                                text: productList[index].rating.toString(),
                                colors: black,
                                weight: FontWeight.bold,
                                size: 12,
                              ),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Icon(
                              Icons.star,
                              color: red,
                              size: 20,
                            ),
                            Icon(
                              Icons.star,
                              color: red,
                              size: 20,
                            ),
                            Icon(
                              Icons.star,
                              color: red,
                              size: 20,
                            ),
                            Icon(
                              Icons.star,
                              color: red,
                              size: 20,
                            ),
                            Icon(
                              Icons.star,
                              color: grey,
                              size: 14,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 6.0),
                          child: CustomText(
                            text: "P${productList[index].price}",
                            size: 14,
                            weight: FontWeight.bold,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
