import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:makanbalayyo/models/category.dart';
import 'package:makanbalayyo/widgets/categories.dart';
import 'package:makanbalayyo/widgets/custom_text.dart';
import 'package:makanbalayyo/widgets/featured.dart';
import 'package:makanbalayyo/widgets/small_button.dart';
import '../commons.dart';
//import 'package:food_course/scr/helpers/screen_navigation.dart';
//import 'package:food_course/scr/helpers/style.dart';
//import 'package:food_course/scr/providers/app.dart';
//import 'package:food_course/scr/providers/category.dart';
//import 'package:food_course/scr/providers/product.dart';
//import 'package:food_course/scr/providers/restaurant.dart';
//import 'package:food_course/scr/providers/user.dart';
//import 'package:food_course/scr/screens/cart.dart';
//import 'package:food_course/scr/screens/category.dart';
//import 'package:food_course/scr/screens/login.dart';
//import 'package:food_course/scr/screens/order.dart';
//import 'package:food_course/scr/screens/product_search.dart';
//import 'package:food_course/scr/screens/restaurant.dart';
//import 'package:food_course/scr/screens/restaurants_search.dart';
//import 'package:food_course/scr/widgets/categories.dart';
//import 'package:food_course/scr/widgets/custom_text.dart';
//import 'package:food_course/scr/widgets/featured_products.dart';
//import 'package:food_course/scr/widgets/loading.dart';
//import 'package:food_course/scr/widgets/restaurant.dart';
//import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomText(
                    text: "Search for your favorite healthy food",
                    size: 18,
                  ),
                ),
                Stack(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.notifications_none),
                      onPressed: () {},
                    ),
                    Positioned(
                      top: 12,
                      right: 12,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: red,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: white,
                  boxShadow: [
                    BoxShadow(
                      color: grey,
                      offset: Offset(1, 1),
                      blurRadius: 4,
                    )
                  ], //BoxShadow
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.search,
                    color: red,
                  ),
                  title: TextField(
                    decoration: InputDecoration(
                        hintText: "Find Food and Restaurants",
                        border: InputBorder.none),
                  ),
                  trailing: Icon(
                    Icons.filter_list,
                    color: red,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Categories(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text: "Featured",
                size: 20,
                colors: grey,
              ),
            ),
            Featured(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text: "Popular",
                size: 20,
                colors: grey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Stack(
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: EdgeInsets.all(0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset("images/food.jpg"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SmallButton(Icons.favorite),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            width: 50,
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.yellow[900],
                                    size: 20,
                                  ),
                                ),
                                Text("4.5")
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black.withOpacity(0.8),
                              Colors.black.withOpacity(0.7),
                              Colors.black.withOpacity(0.6),
                              Colors.black.withOpacity(0.5),
                              Colors.black.withOpacity(0.4),
                              Colors.black.withOpacity(0.3),
                              Colors.black.withOpacity(0.2),
                              Colors.black.withOpacity(0.1),
                              Colors.black.withOpacity(0.05),
                              Colors.black.withOpacity(0.025),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(12, 8, 8, 8),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Pancakes \n",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: white),
                                  ),
                                  TextSpan(
                                    text: "by \n",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: white),
                                  ),
                                  TextSpan(
                                    text: "Pizza hut \n",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: white),
                                  ),
                                ],
                                style: TextStyle(color: black),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: "P12.99 \n",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w300,
                                      color: white),
                                )
                              ], style: TextStyle(color: black)),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 67,
        color: white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "images/home.png",
                    width: 26,
                    height: 26,
                  ),
                  SizedBox(height: 2),
                  CustomText(
                    text: "Home",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "images/target.png",
                    width: 26,
                    height: 26,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  CustomText(
                    text: "Target",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "images/shopping-bag.png",
                    width: 26,
                    height: 26,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  CustomText(
                    text: "Cart",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "images/shopping-bag.png",
                    width: 26,
                    height: 26,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  CustomText(
                    text: "Cart",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//Git Sample Comment
