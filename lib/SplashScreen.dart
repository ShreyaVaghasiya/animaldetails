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
    // TODO: implement initState
    super.initState();
    Set<String> categories =
    Set<String>.from(list.map((item) => item['Category']));
    uniqueList = categories.map((category) => {'Category': category}).toList();
    print(uniqueList);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        shrinkWrap: true,
        children: List.generate(
          list.length,
              (index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {

                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFD270),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        (list[index]['Category']),
                      ),
                      Image.network(list[index]['Image'])
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
