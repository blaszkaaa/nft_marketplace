// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sort_child_properties_last, avoid_print

import 'package:flutter/material.dart';

class HomeUser extends StatelessWidget {
  const HomeUser({Key? key}) : super(key: key);

  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 11, 12, 14),
      body: Column(
        children: [
          
          SizedBox(height: 38),

          //AppBar

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Image.asset("lib/img/zdj1.jpg", width: 80),
                ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      Text(
                        "Your NFT", 
                        style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  SizedBox(height: 10),
                    Row(
                      children: [
                        Image.asset("lib/img/eth.png", width: 20,),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            "2.45 ETH ", 
                            style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(left: 90),
                child: Container(
                  child: Ink(
                    decoration: const ShapeDecoration(
                      color: Color.fromARGB(255, 20, 22, 26),
                      shape: CircleBorder(),
                    ),
                  child: IconButton(
                    onPressed: null, 
                    icon: Icon(
                      Icons.notification_add_outlined, 
                      color: Colors.grey[500],
                    )
                  ),
                ),
              ),
            )],
          ),
        ),
       
        //wyszukiwarka i ustawienia
        
        SizedBox(height: 25),

        
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
              width: 240,
              child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey[500],
              ),
                hintText: "Search best NFT",
                hintStyle: TextStyle(
                  fontSize: 18.0, 
                  color: Colors.grey[500],
                ),
                focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(120),
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 20, 22, 26),
                )
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(120),
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 20, 22, 26),
                )
              ),
            ),
          ),
        ),
      ),
      
      Padding(
        padding: const EdgeInsets.only(left: 15),
          child: Container(
            child: Ink(
              decoration: const ShapeDecoration(
              color: Color.fromARGB(255, 248, 204, 58),
              shape: CircleBorder(),
            ),
              child: IconButton(
              iconSize: 40,
              onPressed: null, 
              icon: Icon(
                Icons.settings, 
                color: Colors.white,
              )
            ),
          ),
        ),
      )],
    ),

      SizedBox(height: 15,),

        //kategorie
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: TextButton(
              child: Text('   All   '),
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Color.fromARGB(255, 248, 204, 58),
                onSurface: Colors.grey,
                shape: RoundedRectangleBorder(side: BorderSide(
                width: 1,
                style: BorderStyle.solid
              ), borderRadius: BorderRadius.circular(50)),
              ),
              onPressed: () {
                print('Pressed');
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: TextButton(
              child: Text('   Drop Price   '),
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Color.fromARGB(255, 20, 22, 26),
                onSurface: Colors.grey,
                shape: RoundedRectangleBorder(side: BorderSide(
                width: 1,
                style: BorderStyle.solid
              ), borderRadius: BorderRadius.circular(50)),
              ),
              onPressed: () {
                print('Pressed');
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: TextButton(
              child: Text('   Popular   '),
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Color.fromARGB(255, 20, 22, 26),
                onSurface: Colors.grey,
                shape: RoundedRectangleBorder(side: BorderSide(
                width: 1,
                style: BorderStyle.solid
              ), borderRadius: BorderRadius.circular(50)),
              ),
              onPressed: () {
                print('Pressed');
              },
            ),
          ),
        ],
      ),

          SizedBox(height: 15,),

          Column(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(45),
                  child: Image.asset("lib/img/zdj2.jpg", width: 350),
                ),
            ],
          )

        ],
      ),
    );
  }
}