import 'dart:async';
import 'dart:math';
import 'package:animaldetails/HomePage.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'globals.dart';
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => Home_Page()
            )
        )
    );
  }
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    List imageList = ['https://thumbs.dreamstime.com/b/big-lion-lying-savannah-grass-landscape-characteristic-trees-plain-hills-background-35172905.jpg',
     'https://a-z-animals.com/media/animals/images/original/zebra1.jpg',
      'https://a-z-animals.com/media/animals/images/original/zebra1.jpg',
      'https://thumbs.dreamstime.com/b/black-white-cow-big-full-udders-breed-cattle-holstein-frisia-path-meadow-blue-sky-133494707.jpg'
   'https://www.catbreedslist.com/cat-wallpapers/american-shorthair-kitten-cute-look-up-800x600.jpg',
      'https://cdn.pixabay.com/photo/2020/03/01/15/30/fox-4893199__340.jpg'
    ];
    Random r1 = Random();
    int n1 = r1.nextInt(6);
    return Scaffold(
      body :Container(
        height: h,
          width: w,
          child: Image.network(imageList[n1])),
      backgroundColor: CupertinoColors.black,
      );

  }
}

// ),