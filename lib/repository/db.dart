import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:weather_app/models/search_item/search_item.dart';

class DatabaseRepository {
  static final DatabaseRepository _instance = DatabaseRepository._internal();

  factory DatabaseRepository() => _instance;
  static Database _database;

  DatabaseRepository._internal();

  Future<void> init() async {
    _database = await _initDatabase();
  }

  Future<Database> _initDatabase() async {
    return openDatabase(
      join(await getDatabasesPath(), 'weather_app_database.db'),
      onCreate: (Database db, int version) {
        return db.execute(
          // ignore: lines_longer_than_80_chars
          'CREATE TABLE search_history (id INTEGER PRIMARY KEY AUTOINCREMENT, city_name TEXT NOT NULL)',
        );
      },
      version: 1,
    );
  }

  Future<void> insert(SearchItem item) async {
    await _database.insert(
      'search_history',
      item.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<SearchItem>> fetchSearchHistory() async {
    final List<Map<String, dynamic>> maps =
        await _database.query('search_history');
    return List<SearchItem>.generate(maps.length, (int i) {
      return SearchItem.fromJson(maps[i]);
    });
  }
}
