import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:actividad_integradora_2/models/usuario.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;
  DatabaseHelper._internal();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'usuarios.db');
    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE usuarios(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        nombre TEXT NOT NULL,
        email TEXT NOT NULL UNIQUE,
        edad INTEGER NOT NULL,
        telefono TEXT NOT NULL,
        fotoPerfil TEXT
      )
    ''');
  }

  Future<int> insertUsuario(Usuario usuario) async {
    Database db = await database;
    return await db.insert('usuarios', usuario.toMap());
  }

  Future<Usuario?> getUltimoUsuario() async {
    Database db = await database;
    List<Map<String, dynamic>> maps = await db.query(
      'usuarios',
      orderBy: 'id DESC',
      limit: 1,
    );

    if (maps.isNotEmpty) {
      return Usuario.fromMap(maps.first);
    }
    return null;
  }
}
