
import 'package:agri_cure/Controllers/NotesProvider.dart';
import 'package:agri_cure/Helpers/DatabaseHelper.dart';
import 'package:agri_cure/Helpers/NotificationsHelper.dart';
import 'package:agri_cure/Helpers/SizeConfig.dart';
import 'package:agri_cure/Helpers/TextSizes.dart';
import 'package:agri_cure/Models/NotesModel.dart';
import 'package:agri_cure/Models/NotesModelDB.dart';
import 'package:agri_cure/Theme/theme.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class UpdateNoteDialog extends StatefulWidget {

  String? documentId;
  QueryDocumentSnapshot? notesDocument;


  UpdateNoteDialog({this.documentId, this.notesDocument});

  @override
  _UpdateNoteDialogState createState() => _UpdateNoteDialogState();
}

class _UpdateNoteDialogState extends State<UpdateNoteDialog> {

  DatabaseHelper _databaseHelper = DatabaseHelper();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  DateTime _selectedDate=DateTime.now();
  TimeOfDay _selectedTime = TimeOfDay(hour: 00, minute: 00);


  @override
  void initState() {
    // TODO: implement initState

    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      _titleController.text = widget.notesDocument!['title'];
      _descriptionController.text = widget.notesDocument!['description'];
      _selectedDate = DateTime.parse(widget.notesDocument!['date']);
      _dateController.text = DateFormat("yy-MMM-dd").format(DateTime.parse(widget.notesDocument!['date']));
      String time = widget.notesDocument!['time'];
      String time1 = time.split("(")[1].split(")")[0];
      _selectedTime= TimeOfDay(hour:int.parse(time1.split(":")[0]),minute: int.parse(time1.split(":")[1]));
      _timeController.text = _selectedTime.format(context);
    });


    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      elevation: 10,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal*3,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: SizeConfig.safeBlockVertical*2,
            ),

            Text("Update note", style:  TextSizes.primaryColor16pxw700.copyWith(
              fontWeight: FontWeight.w800
            ),),

            SizedBox(
              height: SizeConfig.safeBlockVertical*5,
            ),

            Form(
                key: _formKey,
                child:
            Column(
              children: [
                Container(
                  height: SizeConfig.safeBlockVertical*7,
                  width: SizeConfig.screenWidth,
                  child: TextFormField(
                    controller: _titleController,
                    validator: (input){
                      if (input!.isEmpty){
                        return "Title cannot be empty";
                      }
                      else{
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        hintStyle: TextSizes.black12pxw400.copyWith(color: Colors.black38),
                      hintText: "Enter title",
                      filled: true,
                      fillColor: Colors.black12,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              width: 1,
                              color: primaryColor
                          ),
                        ),
                        border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      //label: Text("Title",style: TextSizes.black14pxw600,)
                    ),
                  ),
                ),

                SizedBox(
                  height: SizeConfig.safeBlockVertical*2,
                ),



                Container(
                  height: SizeConfig.safeBlockVertical*7,
                  width: SizeConfig.screenWidth,
                  child: TextFormField(
                    controller: _descriptionController,
                    validator: (input){
                      if (input!.isEmpty){
                        return "Description cannot be empty";
                      }
                      else{
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        hintStyle: TextSizes.black12pxw400.copyWith(color: Colors.black38),
                        hintText: "Enter description",
                        filled: true,
                        fillColor: Colors.black12,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              width: 1,
                              color: primaryColor
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        //label: Text("Description",style: TextSizes.black14pxw600,)
                    ),
                  ),
                ),

                SizedBox(
                  height: SizeConfig.safeBlockVertical*2,
                ),

                GestureDetector(
                  onTap: (){
                    print("tap");
                    datePicker(context);

                  },
                  behavior: HitTestBehavior.translucent,
                  child: Container(
                    height: SizeConfig.safeBlockVertical*7,
                    width: SizeConfig.screenWidth,
                    child: TextFormField(
                      controller: _dateController,
                      validator: (input){
                        if (input!.isEmpty){
                          return "Date cannot be empty";
                        }
                        else{
                          return null;
                        }
                      },
                      enabled: false,
                      decoration: InputDecoration(
                          hintStyle: TextSizes.black12pxw400.copyWith(color: Colors.black38),
                          hintText: "Select Datetime",
                          filled: true,
                          fillColor: Colors.black12,
                        disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                width: 0.7,
                                color: Colors.black
                            )
                        ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                             borderSide: BorderSide(
                            width: 1,
                               color: primaryColor
                          ),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.safeBlockVertical*2,
                ),

                GestureDetector(
                  onTap: (){

                    timePicker(context);

                  },
                  behavior: HitTestBehavior.translucent,
                  child: Container(
                    height: SizeConfig.safeBlockVertical*7,
                    width: SizeConfig.screenWidth,
                    child: TextFormField(
                      controller: _timeController,
                      validator: (input){
                        if (input!.isEmpty){
                          return "Time cannot be empty";
                        }
                        else{
                          return null;
                        }
                      },
                      enabled: false,
                      decoration: InputDecoration(
                          hintStyle: TextSizes.black12pxw400.copyWith(color: Colors.black38),
                          hintText: "Select time",
                          filled: true,
                          fillColor: Colors.black12,
                        disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                width: 0.7,
                                color: Colors.black
                            )
                        ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                             borderSide: BorderSide(
                            width: 1,
                               color: primaryColor
                          ),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                      ),
                    ),
                  ),
                ),

              ],
            )),


            SizedBox(
              height: SizeConfig.safeBlockVertical*5,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Cancel", style: TextSizes.black14pxw600,),),


                SizedBox(width: SizeConfig.safeBlockHorizontal*2,),

                TextButton(onPressed: addPressed
                  , child: Text("Update", style: TextSizes.black14pxw600,),)

              ],
            ),



            SizedBox(
              height: SizeConfig.safeBlockVertical*5,
            )
          ],
        ),
      ),
    );
  }


  Future<Null> datePicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: _selectedDate,
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime(2015),
        lastDate: DateTime(2101));
    if (picked != null)
      setState(() {
        _selectedDate = picked;
        _dateController.text = DateFormat.yMd().format(_selectedDate);
      });
  }


  Future<Null> timePicker(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );
    if (picked != null)
      setState(() {
        _selectedTime = picked;
       String _hour = _selectedTime.hour.toString();
        String _minute = _selectedTime.minute.toString();
        String _time = _hour + ' : ' + _minute;
        _timeController.text = _selectedTime.format(context);
      });
  }


  DateTime join(DateTime date, TimeOfDay time) {
    return new DateTime(date.year, date.month, date.day, time.hour, time.minute);
  }

  void addPressed() {
    if (_formKey.currentState!.validate()){
      final notesProvider = Provider.of<NotesProvider>(context,listen: false);
      String title = _titleController.text;
      String description= _descriptionController.text;
      DateTime dateTime = join(_selectedDate, _selectedTime);
      //NotesModel notesModel = NotesModel(title: title,description: description,dateTime: dateTime);
      NotesModelDB notesModelDB = NotesModelDB(title: title,description: description,date: _selectedDate.toString(),time: _selectedTime.toString());
      notesProvider.updateNote(widget.documentId!,notesModelDB);
      //_databaseHelper.insertNote(notesModelDB);
      //notesProvider.showLocalNotification(scheduledTime: dateTime);
      //showNotification();

      NotificationsHelper.setNotification(dateTime, 1,title,description);
      Navigator.pop(context);
    }
  }


  void showNotification(){
    AwesomeNotifications().createNotification(
        content: NotificationContent(
            id: 10,
            channelKey: 'basic_channel',
            title: 'Simple Notification',
            body: 'Simple body'
        )
    );
  }


  TimeOfDay stringToTimeOfDay(String tod) {
    final format = DateFormat("HH:mm"); //"6:00 AM"
    return TimeOfDay.fromDateTime(format.parse(tod));
  }



}
