import 'dart:convert';
import 'dart:io';

import 'package:agri_cure/Helpers/DatabaseConstants.dart';
import 'package:agri_cure/Models/NotesModelDB.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as p;

class DatabaseHelper{

  static DatabaseHelper? _databaseHelper;

   Database? _database;



  DatabaseHelper._createInstance();



  factory DatabaseHelper(){
    if(_databaseHelper==null) {
      _databaseHelper = DatabaseHelper._createInstance();
    }

    return _databaseHelper!;
  }




  Future<Database> get database async{
    if(_database==null){
      _database= await initializeDatabase();
    }
    return _database!;
  }


  void _onCreate(Database database, int version) async{


    //likes on posts

    await database.execute("CREATE TABLE $table_notes("
        "$col_id INTEGER PRIMARY KEY AUTOINCREMENT,"
        "$col_title TEXT,"
        "$col_description TEXT,"
        "$col_dateTime TEXT)");







  }






  Future<Database> initializeDatabase() async{


    var databasesPath = await getDatabasesPath();
    String path = p.join(databasesPath, 'agri_cure.db');
     /* Directory directory= await getApplicationDocumentsDirectory();
     String path= directory.path+"random_chat.db";*/

    var dbPath= openDatabase(path,version: 1,onCreate: _onCreate);

    return dbPath;
  }










  Future<int> getCountOfTableRecords(String tableName) async {
    Database db= await this.database;
    int? count= Sqflite.firstIntValue(await db.rawQuery("SELECT COUNT(*) FROM $tableName"));

    return count!;
  }

  Future<int> insertNote(NotesModelDB note) async{
    Database db= await this.database;
    int res;

    res= await db.insert(table_notes, note.toJson());

    print("Insert note res: $res");
    return res;
  }





  Future<List<NotesModelDB>?> getAllNotes() async{
    Database db= await this.database;

    List<Map<String,dynamic>> records=[];

    records=   await db.query(table_notes);

    if(records.isEmpty || records==null){
      return null;
    }
    else{
      List<NotesModelDB> postsList=[];

      for(Map<String,dynamic> map in records){
        NotesModelDB post= NotesModelDB.fromJson(map);
        postsList.add(post);
      }

      return postsList;
    }

  }




}






