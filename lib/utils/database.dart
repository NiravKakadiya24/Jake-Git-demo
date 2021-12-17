import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

final String tablename = 'dummyData';

final String columnId = '_id';
final String columnDiscription = 'discription';
final String columnName = 'name';
final String columnLanguage = 'language';
final String columnOpenIssues = 'openIssues';
final String columnSize = 'size';
final String columnPageCount = 'pageCount';

class Todo {
  int? id;
  String? discription;
  String? name;
  String? language;
  String? openIssues;
  String? size;
  String? pageCount;

  Todo(this.id, this.discription, this.name, this.language, this.openIssues,
      this.size, this.pageCount);

  Map<String, Object?> toMap() {
    var map = <String, Object?>{
      columnDiscription: discription == null ? ' ' : discription,
      columnName: name == null ? ' ' : name,
      columnLanguage: language == null ? ' ' : language,
      columnOpenIssues: openIssues == null ? ' ' : openIssues,
      columnSize: size == null ? ' ' : size,
      columnPageCount: pageCount == null ? ' ' : pageCount,
    };
    if (id != null) {
      map[columnId] = id;
    }
    return map;
  }

  Todo.fromMap(Map<dynamic, dynamic> map) {
    id = (map[columnId] == null ? '' : map[columnId]) as int;
    discription = (map[columnDiscription] == null ? '' : map[columnDiscription])
        as String;
    name = (map[columnName] == null ? '' : map[columnName]) as String;
    language =
        (map[columnLanguage] == null ? '' : map[columnLanguage]) as String;
    openIssues =
        (map[columnOpenIssues] == null ? '' : map[columnOpenIssues]) as String;
    size = (map[columnSize] == null ? '' : map[columnSize]) as String;
    pageCount =
        (map[columnPageCount] == null ? '' : map[columnPageCount]) as String;
  }
}

class TodoProvider {
  Database? _database;
  static final _databaseName = "todo.db";
  static final _databaseVersion = 1;

  TodoProvider._privateConstructor();

  static final TodoProvider instance = TodoProvider._privateConstructor();

  Future<Database?> get database async {
    if (_database != null) return _database;
    _database = await _initDatabase();
    return _database;
  }

  _initDatabase() async {
    String path = join(await getDatabasesPath(), _databaseName);
    return await openDatabase(path,
        version: _databaseVersion, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
        create table $tablename ( 
          $columnId integer primary key autoincrement, 
          $columnDiscription text not null,
          $columnName text not null,
          $columnLanguage text not null,
          $columnOpenIssues text not null,
          $columnSize text not null,
          $columnPageCount text not null)
        ''');
  }

  Future<Todo> insert(Todo todo) async {
    Database? db = await instance.database;
    todo.id = await db!.insert(tablename, todo.toMap());
    return todo;
  }

  Future<List<Todo>?> getTodo() async {
    Database? db = await instance.database;
    List<Todo> todo = [];

    List<Map> maps = await db!.query(tablename, columns: [
      columnId,
      columnDiscription,
      columnName,
      columnLanguage,
      columnOpenIssues,
      columnSize,
      columnPageCount,
    ]);

    for (int i = 0; i < maps.length; i++) {
      Todo model = Todo.fromMap(maps[i]);
      todo.add(model);
    }

    if (maps.length > 0) {
      return todo;
    }
    return [];
  }

  Future<int> update(Todo todo) async {
    Database? db = await instance.database;

    return await db!.update(tablename, todo.toMap(),
        where: '$columnId = ?', whereArgs: [todo.id]);
  }

  Future close() async {
    Database? db = await instance.database;
    return db!.close();
  }
}
