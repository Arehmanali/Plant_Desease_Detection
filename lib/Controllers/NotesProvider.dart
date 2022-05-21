

import 'package:agri_cure/Helpers/DatabaseHelper.dart';
import 'package:agri_cure/Models/NotesModel.dart';
import 'package:agri_cure/Models/NotesModelDB.dart';
import 'package:agri_cure/Utils/Constants.dart';
import 'package:agri_cure/Views/AlertDialogs/AddNoteDialog.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class NotesProvider extends ChangeNotifier {

  List<NotesModelDB> notesList = [];
  DatabaseHelper _databaseHelper = DatabaseHelper();
  FirebaseFirestore _firestore = FirebaseFirestore.instance;


  bool gettingNotes = false;


  void addNote(NotesModelDB model){
    User? currentUser = FirebaseAuth.instance.currentUser;

    _firestore.collection("notes").doc(currentUser!.uid).collection("user-notes").add(model.toJson());
    //notesList.add(model);
    notifyListeners();
  }

  void updateNote(String docId,NotesModelDB data){
    User? currentUser = FirebaseAuth.instance.currentUser;

    _firestore.collection("notes").doc(currentUser!.uid).collection("user-notes").doc(docId).update(data.toJson());

  }


  void showAddNoteDialog(){
    showDialog(context: navigatorKey!.currentContext!,
        builder: (ctx){
         return AddNoteDialog();
        });
  }


  void changeGettingNotes(bool val){
    gettingNotes = val;
    notifyListeners();
  }

  void getAllNotesFromLocal() async{
    changeGettingNotes(true);
    notesList = await _databaseHelper.getAllNotes() ?? [];
    changeGettingNotes(false);
    notifyListeners();
  }




  void showLocalNotification({DateTime? scheduledTime}) async{
    await AwesomeNotifications().createNotification(
        content: NotificationContent(
          id: 0,
          channelKey: 'basic_channel',
          title: 'Just in time!',
          body: 'This notification was schedule to shows at ',
          wakeUpScreen: true,
          category: NotificationCategory.Reminder,
          notificationLayout: NotificationLayout.Default,
          payload: {'uuid': 'uuid-test'},
          autoDismissible: false,
        ),
        schedule: NotificationCalendar.fromDate(date: scheduledTime!));
  }



}