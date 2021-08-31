import 'package:flutter_remindyours_app/models/Model_Jadwal.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:io' as io;
import 'dart:async';
import 'package:path/path.dart';

class DBHelper {
  static final DBHelper _instance = new DBHelper.internal();
  DBHelper.internal();

  factory DBHelper() => _instance;

  static late Database _db;

  Future<Database> get db async {
    // ignore: unnecessary_null_comparison
    // if (_db != null) return _db;
    _db = await setDB();
    return _db;
  }

  setDB() async {
    io.Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, 'ReminderDB');
    var dB = await openDatabase(path, version: 1, onCreate: _onCreate);
    return dB;
  }

  void _onCreate(Database db, int version) async {
    await db.execute('CREATE TABLE user (namauser TEXT)');
    print('DB Created');
  }

  Future<int> saveNote(modelJadwal model) async {
    var dbClient = await db;
    int res = await dbClient.insert('user', model.toMap());
    print('data inserted');
    return res;
  }

  Future<List<modelJadwal>> getNote() async {
    var dbClient = await db;
    List<Map> list = await dbClient.rawQuery('SELECT * FROM user');
    List<modelJadwal> datajadwal = [];
    for (int i = 0; i < list.length; i++) {
      var jadwal = new modelJadwal(list[i]['namauser']);
      datajadwal.add(jadwal);
    }
    return datajadwal;
  }
}
