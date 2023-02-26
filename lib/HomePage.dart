import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    List aList = ["Lion","Zebra","Tiger","Cat","Dog","Elephant","Fox","Horse","Cow"];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
        leading: Icon(CupertinoIcons.line_horizontal_3_decrease,size: 25,color: CupertinoColors.white,),
        title: Text("Animals",style: GoogleFonts.lato(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: CupertinoColors.white,
        ),),
      ),
      body: ListView.separated(
        itemCount: aList.length,
          itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListTile(
            tileColor: Colors.green.shade50,
            leading: Text("${index+1}",style: GoogleFonts.robotoSlab(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),),
            title: Text("${aList[index]}",style: GoogleFonts.ptSerif(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: CupertinoColors.black,
            ),),
            trailing:  Icon(CupertinoIcons.forward,size: 30,color: CupertinoColors.black,),
          ),
        );
      }, separatorBuilder: (BuildContext context, int index) {
          return Divider(
            thickness: 2,
            color: Colors.green.shade800,
          );
      },),
    );
  }
}
