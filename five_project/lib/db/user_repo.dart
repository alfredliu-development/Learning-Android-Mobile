import 'user_model.dart';
import 'db_helper.dart';

class UserRepo {
  static const table = "users";

  /// CREATE
  static Future<int> insert(UserModel user) async {
    final db = await DBHelper.database;
    return await db.insert(table, user.toMap());
  }

  /// READ
  static Future<List<UserModel>> getAll() async {
    final db = await DBHelper.database;
    final data = await db.query(table);

    return data.map((json) => UserModel.fromMap(json)).toList();
  }

  /// UPDATE
  static Future<int> update(UserModel user) async {
    final db = await DBHelper.database;
    return await db.update(
      table,
      user.toMap(),
      where: "id = ?",
      whereArgs: [user.id],
    );
  }

  /// DELETE
  static Future<int> delete(int id) async {
    final db = await DBHelper.database;
    return await db.delete(
      table,
      where: "id = ?",
      whereArgs: [id],
    );
  }
}
