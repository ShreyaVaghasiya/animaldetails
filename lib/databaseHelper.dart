// // ignore_for_file: unused_field, prefer_const_declarations
// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';
//
// import 'ModelClass.dart';
//
//
// class DatabaseHelper {
//   static final _databaseName = "MyDatabase.db";
//   static final _databaseVersion = 1;
//
//   static final table = 'my_table';
//
//   static final columnId = '_id';
//   static final columnName = 'name';
//   static final columnDetails = 'details';
//   static final columnImage = 'image';
//   var result;
//
//   DatabaseHelper._privateConstructor();
//
//   static final DatabaseHelper instance =
//   DatabaseHelper._privateConstructor();
//
//   static Database? _database;
//
//   static Future<Database?> get database async {
//     final databasePath = await getDatabasesPath();
//     final status = await databaseExists(databasePath);
//     if (!status || status != null) {
//       _database = await openDatabase(join(databasePath, 'MyDatabase1.db'),
//           onCreate: (database, version) {
//             return database.execute("CREATE TABLE AnimalsModel("
//                 "id INTEGER PRIMARY KEY AUTOINCREMENT, "
//                 "name TEXT, "
//                 "details TEXT, "
//                 "pict BLOB )");
//           }, version: _databaseVersion);
//     }
//     return _database;
//   }
//
//   Future<bool> insert(AnimalsModel animalsModel) async {
//     final db = await database;
//     try {
//       await db!.insert("AnimalsModel", animalsModel.toMap());
//     } catch (e) {
//       throw e;
//     }
//     return true;
//   }
//   Future<List<AnimalsModel>> getEmployees() async {
//     Database? dbClient = await database;
//     List<Map> list = await dbClient!.rawQuery("SELECT * FROM Employee");
//     List<AnimalsModel> animalList = [];
//     for (int i = 0; i < list.length; i++) {
//       animalList.add(AnimalsModel(list[i]["name"], list[i]["details"],
//          list[i]["pict"]));
//     }
//     print("Length : ${animalList.length}");
//     return animalList;
//   }
//
//   Future<int> updateStatic(
//       {Map<String, dynamic>? row, String? table, String? id}) async {
//     Database? db = await database;
//     return await db!
//         .update(table!, row!, where: '$columnId = ?', whereArgs: [id]);
//   }
//
//   Future<int> delete(int id) async {
//     Database? db = await database;
//     return await db!.delete(table, where: '$columnId = ?', whereArgs: [id]);
//   }
// }
