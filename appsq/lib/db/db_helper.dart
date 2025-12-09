import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBHelper {
  static const _dbName = "app.db";
  static const _dbVersion = 1;

  static Database? _database;

  /// Singleton untuk DB
  static Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB();
    return _database!;
  }

  /// Inisialisasi database
  static Future<Database> _initDB() async {
    String dbPath = join(await getDatabasesPath(), _dbName);

    return await openDatabase(
      dbPath,
      version: _dbVersion,
      onCreate: _onCreate,
    );
  }

  /// Buat tabel saat pertama kali
  static Future<void> _onCreate(Database db, int version) async {
    await db.execute("""
      CREATE TABLE users (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT,
        age INTEGER
      )
    """);
  }
}
