import 'package:addnotes_app/screens/model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

import 'dart:io' as io;

class DBHelper{


static Database? _db;
Future<Database?> get db async{
  if(_db != null){
    return _db;
  }
  _db = await InitDatabase();
  return _db;
}

InitDatabase()async{

  io.Directory documentDirectory = await getApplicationDocumentsDirectory();
  String path = join(documentDirectory.path, "notes.db");
  var db = await openDatabase(path, version: 1, onCreate: _onCreate);
  return db;
}
//Create table
  _onCreate(Database db, int version)async{
    await db.execute("CREATE TABLE notes(id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT NOT NULL, description TEXT NOT NULL )");
  }

// insert data in table
  Future<Notesmodel> insert(Notesmodel notesModel) async{
    var dbClient = await db;
    await dbClient!.insert("notes", notesModel.toMap());
    return notesModel;
  }
// get data table
   Future<List<Notesmodel>> getNotesList()async{
    var dbClient = await db;
    final List<Map<String, Object?>> queryResult = await dbClient!.query("notes");
    return queryResult.map((e) => Notesmodel.fromMap(e)).toList();
   }
//  delete data    
    Future<int> delete(int id)async{
      var dbClient = await db;
      return await dbClient!.delete(
        'notes',where: "id = ?",
        whereArgs: [id]
      );
    }
// edit data
    Future<int> edit(Notesmodel notesModel)async{
      var dbClient = await db;
      return await dbClient!.update(
        "notes",
        notesModel.toMap(),
        where: "id = ?",
        whereArgs: [notesModel.id]);
    }
}