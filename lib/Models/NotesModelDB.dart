import 'package:flutter/material.dart';

class NotesModelDB{
  String? title,description;
  String? date;
  String? time;

  NotesModelDB({
    this.title, this.description, this.date,this.time});



  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['title'] = title;
    _data['description'] = description;
    _data['date'] = date;
    _data['time']= time;
    return _data;
  }


  NotesModelDB.fromJson(Map<String, dynamic> json){
    title = json['title'];
    description = json['description'];
    date = json['date'];
    time = json['time'];
  }
}