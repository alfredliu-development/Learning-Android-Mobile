import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._init();
  static Database? _database;

  DatabaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB("mydb.db");
    return _database!;
  }

  Future<Database> _initDB(String file) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, file);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE users (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        username TEXT UNIQUE,
        password TEXT,
        phone TEXT
      )
    ''');
  }

  Future<int> registerUser(String username, String password, String phone) async {
    final db = await instance.database;

    return await db.insert("users", {
      "username": username,
      "password": password,
      "phone": phone
    });
  }

  Future<Map<String, dynamic>?> loginUser(String username, String password) async {
    final db = await instance.database;

    final result = await db.query(
      "users",
      where: "username = ? AND password = ?",
      whereArgs: [username, password],
    );

    if (result.isNotEmpty) {
      return result.first;
    }
    return null;
  }
}
