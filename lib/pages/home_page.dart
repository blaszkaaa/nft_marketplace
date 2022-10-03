// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:nft_marketplace/pages/account.dart';
import 'package:nft_marketplace/pages/cart.dart';
import 'package:nft_marketplace/pages/favourite.dart';
import 'package:nft_marketplace/pages/home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var _selectedIndex = 0;
  final List<StatelessWidget> _pages =[
    HomeUser(),
    CartUser(),
    UserFavourite(),
    AccountUser(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    bottomNavigationBar: CurvedNavigationBar(
    backgroundColor: Color.fromARGB(255, 11, 12, 14),
    buttonBackgroundColor: Color.fromARGB(255, 248, 204, 58),
    animationCurve: Curves.fastLinearToSlowEaseIn,
    height: 70,
    color: Color.fromARGB(255, 20, 22, 26),
    items: <Widget>[
      Icon(
        Icons.home_outlined, 
        size: 25, 
        color: Colors.grey[500],
      ),
      Icon(
        Icons.shopping_cart_outlined, 
        size: 25, 
        color: Colors.grey[500],
      ),
      Icon(
        Icons.favorite_border, 
        size: 25, 
        color: Colors.grey[500],
      ),
      Icon(
        Icons.account_circle_rounded, 
        size: 25, 
        color: Colors.grey[500],
      ),
    ],
    onTap: (index) {
      setState(() {
      _selectedIndex = index;
    });
    },
  ),
    body: _pages[_selectedIndex],
    );
  }
}