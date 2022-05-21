import 'package:agri_cure/Controllers/NotesProvider.dart';
import 'package:agri_cure/Helpers/SizeConfig.dart';
import 'package:agri_cure/Helpers/TextSizes.dart';
import 'package:agri_cure/Models/NotesModelDB.dart';
import 'package:agri_cure/Views/AlertDialogs/UpdateNoteDialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class NotesAndReminders extends StatefulWidget {
  const NotesAndReminders({Key? key}) : super(key: key);

  @override
  _NotesAndRemindersState createState() => _NotesAndRemindersState();

}

class _NotesAndRemindersState extends State<NotesAndReminders> {


  Stream? _userNotesStream;
  String? _userUID;

  @override
  void initState() {
    // TODO: implement initState

    _userUID = FirebaseAuth.instance.currentUser!.uid;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<NotesProvider>(
      builder:(ctx,notesProvider,child)=>
          Scaffold(
              body:  notesProvider.gettingNotes == true ?Center(
                child: CircularProgressIndicator(),
              ): Container(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.safeBlockHorizontal*2,
            vertical: SizeConfig.safeBlockVertical*3,
          ),
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.safeBlockVertical*5,
              ),

              Text("Notes and reminders",  style: TextSizes.primaryColor16pxw600,),

              SizedBox(
                height: SizeConfig.safeBlockVertical*5,
              ),

              Expanded(child: StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance.collection("notes").doc(_userUID!).collection("user-notes").snapshots()!,
                builder: (BuildContext ctx,AsyncSnapshot<QuerySnapshot> snapshot) {
                   if (!snapshot.hasData){
                     return Center(child: CircularProgressIndicator(),);
                   }
                   else {
                     if (snapshot.data!.docs.length == 0){
                       return Center(
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 15),
                               child: Text("No previous notes and reminders added yet",
                                 textAlign: TextAlign.center,
                                 style: TextSizes.primaryColor18pxw700,),
                             ),
                             SizedBox(height: SizeConfig.safeBlockVertical*2,),
                             Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 15),
                               child: Text("Add(+) instant notes to keep yourself notified",
                                 textAlign: TextAlign.center,
                                 style: TextSizes.primaryColor14pxw500,),
                             ),

                           ],
                         ),
                       );
                     }
                     else {
                       return ListView.builder(
                         itemCount: snapshot.data!.docs.length,
                         itemBuilder: (context,index)=>_buildNotesRow(snapshot.data!.docs[index]),
                       );
                     }
                   }

                },
              )




              )
            ],
          )
        ),
      ),
    );
  }



  _buildNotesRow(QueryDocumentSnapshot notesModel){
    String time = notesModel['time'];
    String time1 = time.split("(")[1].split(")")[0];
    TimeOfDay _selectedTime= TimeOfDay(hour:int.parse(time1.split(":")[0]),minute: int.parse(time1.split(":")[1]));

   return Container(
     child: Card(
       elevation: 6,
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(10)
       ),
     child: Padding(
       padding: const EdgeInsets.all(8.0),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Expanded(
                   child: Text(notesModel["title"] ?? "",style: TextSizes.black18pxw700,)),

               IconButton(onPressed: ()=>updateNoteDialog(notesModel.id
               ,notesModel), icon: Icon(Icons.edit))
             ],
           ),
           SizedBox(height: 7,),
           Text(""+notesModel["description"], style: TextSizes.black12pxw500,),

           SizedBox(height: 5,),

           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               RichText(text: TextSpan(
                 text:DateFormat("yy-MMM-dd").format(DateTime.parse(notesModel["date"])),
                 style: TextSizes.black12pxw400.copyWith(
                   color: Colors.black54
                 ),
                 children: [
                   TextSpan(
                     text: ", ${_selectedTime.format(context)}",
                     style: TextSizes.black12pxw400.copyWith(
                         color: Colors.black54
                     )
                   ),
                 ]
               )),
               TextButton(onPressed:()=> deleteNoteItem(notesModel.id), child: Text("Delete", style: TextSizes.black12pxw500.copyWith(
                 color: Colors.red
               ),))
             ],
           )

         ],
       ),
     ),
     ),
   );
  }

  void getData() async{

    final notesProvider = Provider.of<NotesProvider>(context,listen: false);
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      notesProvider.getAllNotesFromLocal();
    });
  }


  void deleteNoteItem(String documentId) async{
    final ref = FirebaseFirestore.instance.collection("notes").doc(_userUID!).collection("user-notes");
     await ref.doc(documentId).delete();
  }


  void updateNoteDialog(String documentId,QueryDocumentSnapshot notesDocument){
    showDialog(context: context,
        builder: (ctx){
          return UpdateNoteDialog(documentId: documentId,notesDocument: notesDocument,);
        });
  }
}
