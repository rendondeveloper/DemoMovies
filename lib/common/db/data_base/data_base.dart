import 'package:demo_movies_map_profile/common/db/data_base/tables.dart';import 'package:path/path.dart';import 'package:sqflite/sqflite.dart';class DataBaseLocal {  late Database _database;  Database get() => _database;  DataBaseLocal() {    initDataBase();  }  initDataBase() async {    _database = await createDatabase();  }  Future<Database> createDatabase() async {    var databasesPath = await getDatabasesPath();    String path = join(databasesPath, dataBaseName);    return await openDatabase(path, version: 1, onCreate: (Database db, int version) async {      await db.execute('CREATE TABLE IF NOT EXISTS $categoriesTable '          '($categoriesIdentifier INTEGER PRIMARY KEY, '          '$categoriesName TEXT)');    });  }}