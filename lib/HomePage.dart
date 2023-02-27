import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'globals.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
        leading: Icon(
          CupertinoIcons.line_horizontal_3_decrease,
          size: 25,
          color: CupertinoColors.white,
        ),
        title: Text(
          "Animals",
          style: GoogleFonts.lato(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: CupertinoColors.white,
          ),
        ),
      ),
      body: ListView(
        children: List.generate(
          Global.list.length,
          (index) => Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: (){
                   Navigator.pushNamed(context,'detail',arguments: [
                     Global.list[index]['name'],
                     Global.list[index]['details'],
                     Global.list[index]['Image'],
                   ]);
              },
              child: ListTile(
                  tileColor: Colors.green.shade50,
                  leading: Text(
                    "${index + 1}",
                    style: GoogleFonts.robotoSlab(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  title: Text(
                    "${Global.list[index]['name']}",
                    style: GoogleFonts.ptSerif(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: CupertinoColors.black,
                    ),
                  ),
                  trailing: Icon(
                    CupertinoIcons.forward,
                    size: 30,
                    color: CupertinoColors.black,
                  )),
            ),
          ),
        ),
      ),
    );
  }
}

