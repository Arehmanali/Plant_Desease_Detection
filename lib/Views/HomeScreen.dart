import 'dart:io';

import 'package:agri_cure/Controllers/DrawerProvider.dart';
import 'package:agri_cure/Controllers/NotesProvider.dart';
import 'package:agri_cure/Helpers/TextSizes.dart';
import 'package:agri_cure/Theme/theme.dart';
import 'package:agri_cure/Utils/Utils.dart';
import 'package:agri_cure/Views/ContactUs.dart';
import 'package:agri_cure/Views/DiseaseInfomation.dart';
import 'package:agri_cure/Views/DiseaseIdentification.dart';
import 'package:agri_cure/Views/Drawer/DrawerLayout.dart';
import 'package:agri_cure/Views/NewsAndBlogs.dart';
import 'package:agri_cure/Views/NewsBlogs.dart';
import 'package:agri_cure/Views/NotesAndReminders.dart';
import 'package:agri_cure/Views/WeatherScreenNew.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  DateTime? currentBackPressTime;

  List<Widget> _pages = [
    DiseaseIdentification(),
    DiseaseInformation(),
    NotesAndReminders(),
    NewsBlogs(),
    WeatherScreenNew(),
    ContactUs()
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<DrawerProvider>(
      builder: (ctx,drawerProvider,child)
      =>Consumer<NotesProvider>(
         builder:(ctx,notesProvider,child)=> WillPopScope(
           onWillPop: backPress,
           child: Scaffold(
            backgroundColor: primaryScreenBg,
            appBar: AppBar(
              backgroundColor: primaryColor,
              title: Center(child:

              Text("Plant leaf disease identification", style: TextSizes.primaryColor14pxw500.copyWith(
                  fontSize: 12,
                  color: Colors.white
              ),)

              ),

              actions: drawerProvider.index == 2 ? [
                IconButton(
                  onPressed: (){
                    notesProvider.showAddNoteDialog();
                  },
                  icon: Icon(Icons.add,color: Colors.white,),
                )
              ]:[],
            ),
            drawer: Drawer(
              child: DrawerLayout(),
            ),
            body: PageView.builder(
                itemCount: _pages.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (ctx,index){
                  return _pages[drawerProvider.index];
                }),
        ),
         ),
      ),
    );
  }


  Future<bool> backPress() {

    final provider = Provider.of<DrawerProvider>(context,listen: false);

    if (provider.index == 0){
      DateTime now = DateTime.now();
      if (currentBackPressTime == null ||
          now.difference(currentBackPressTime!) > Duration(seconds: 2)) {
        currentBackPressTime = now;

        Utils.showToastMessage(toastMsg: "Press again to exit");
        return Future.value(false);
      }
      SystemNavigator.pop();
      return Future.value(false);
    }
    else {
      provider.updatePage(0);
      return Future.value(false);
    }


  }
}
