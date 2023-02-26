import 'dart:async';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'SplashScreen.dart';
Future<void> copyDatabase() async {
  // Get the directory for storing the database file
  Directory documentsDirectory = await getApplicationDocumentsDirectory();
  String path = join(documentsDirectory.path, 'Animals.db');

  // Check if the database file already exists
  bool fileExists = await databaseExists(path);

  if (!fileExists) {
    // If the file doesn't exist, copy it from the assets folder
    ByteData data = await rootBundle.load(join('assets/images/Animals.db'));
    List<int> bytes =
    data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    await File(path).writeAsBytes(bytes);
  }
}
void main()
async{
  WidgetsFlutterBinding.ensureInitialized();

  await copyDatabase();
  Directory documentsDirectory = await getApplicationDocumentsDirectory();
  String path = join(documentsDirectory.path, 'Animals.db');
  Database database = await openDatabase(path);

  var list = await database.rawQuery('SELECT * FROM Animals');

  for (var row in list) {
    print(row);
  }
  runApp(
     MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => const MyApp(),
      },
    )
  );
}

