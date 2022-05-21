import 'package:agri_cure/Controllers/DrawerProvider.dart';
import 'package:agri_cure/Helpers/SizeConfig.dart';
import 'package:agri_cure/Helpers/TextSizes.dart';
import 'package:agri_cure/Theme/theme.dart';
import 'package:agri_cure/Utils/Constants.dart';
import 'package:agri_cure/Utils/Utils.dart';
import 'package:agri_cure/Views/Login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DrawerLayout extends StatefulWidget {
  const DrawerLayout({Key? key}) : super(key: key);

  @override
  _DrawerLayoutState createState() => _DrawerLayoutState();
}

class _DrawerLayoutState extends State<DrawerLayout> {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;


  @override
  Widget build(BuildContext context) {
    return Consumer<DrawerProvider>(
      builder: (ctx,drawerController,child){
        return SafeArea(
          child: Container(
            color: primaryScreenBg,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  
                  SizedBox(height: SizeConfig.safeBlockVertical*3,),
                  Text(
                    "Plants leaf disease identification",
                    style: TextSizes.primaryColor14pxw700,
                  ),


                  SizedBox(height: SizeConfig.safeBlockVertical*3,),
                  
                  Container(
                    color: primaryColor,
                    height: 2,
                    width: SizeConfig.screenWidth,
                  ),


                  SizedBox(height: SizeConfig.safeBlockVertical*5,),

                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                      drawerController.updatePage(0);
                    },
                    behavior: HitTestBehavior.translucent,
                    child: Container(
                      height: 55,
                      padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal*5),
                      child: Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            child: Image.asset("assets/images/ic_search.png",fit: BoxFit.fill,),
                          ),

                          SizedBox(width: SizeConfig.safeBlockHorizontal*5,),

                          Text(
                            "Disease detection",
                            style: TextSizes.primaryColor12pxw600,
                          ),

                          Expanded(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Icon(
                                Icons.chevron_right,color: primaryColor,
                                size: 27,
                              ),
                            ),
                          )




                        ],
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                      drawerController.updatePage(1);
                    },
                    behavior: HitTestBehavior.translucent,
                    child: Container(
                      height: 55,
                      padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal*5),
                      child: Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            child: Icon(
                              Icons.remove_red_eye,color: primaryColor,
                              size: 27,
                            ),
                          ),

                          SizedBox(width: SizeConfig.safeBlockHorizontal*5,),

                          Text(
                            "Disease information",
                            style: TextSizes.primaryColor12pxw600,
                          ),

                          Expanded(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Icon(
                                Icons.chevron_right,color: primaryColor,
                                size: 27,
                              ),
                            ),
                          )




                        ],
                      ),
                    ),
                  ),


                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                      drawerController.updatePage(2);

                    },
                    behavior: HitTestBehavior.translucent,
                    child: Container(
                      height: 55,
                      padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal*5),
                      child: Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            child: Icon(Icons.menu_book,
                              size: 30,
                              color: primaryColor,),
                          ),

                          SizedBox(width: SizeConfig.safeBlockHorizontal*5,),

                          Text(
                            "Reminders and notes",
                            style: TextSizes.primaryColor12pxw600,
                          ),

                          Expanded(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Icon(
                                Icons.chevron_right,color: primaryColor,
                                size: 27,
                              ),
                            ),
                          )




                        ],
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                      drawerController.updatePage(3);

                    },
                    behavior: HitTestBehavior.translucent,
                    child: Container(
                      height: 55,
                      padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal*5),
                      child: Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            child: Icon(Icons.newspaper_outlined,
                              size: 30,
                              color: primaryColor,)),

                          SizedBox(width: SizeConfig.safeBlockHorizontal*5,),

                          Text(
                            "News and blogs",
                            style: TextSizes.primaryColor12pxw600,
                          ),

                          Expanded(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Icon(
                                Icons.chevron_right,color: primaryColor,
                                size: 27,
                              ),
                            ),
                          )




                        ],
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                      drawerController.updatePage(4);
                    },
                    behavior: HitTestBehavior.translucent,
                    child: Container(
                      height: 55,
                      padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal*5),
                      child: Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            child: Image.asset("assets/images/ic_weather.png",fit: BoxFit.fill,),
                          ),

                          SizedBox(width: SizeConfig.safeBlockHorizontal*5,),

                          Text(
                            "Weather information",
                            style: TextSizes.primaryColor12pxw600,
                          ),

                          Expanded(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Icon(
                                Icons.chevron_right,color: primaryColor,
                                size: 27,
                              ),
                            ),
                          )




                        ],
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                      drawerController.updatePage(5);

                    },
                    behavior: HitTestBehavior.translucent,
                    child: Container(
                      height: 55,
                      padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal*5),
                      child: Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            child: Icon(
                              Icons.contact_mail_outlined,
                              color: primaryColor,
                              size: 30,
                            )),

                          SizedBox(width: SizeConfig.safeBlockHorizontal*5,),

                          Text(
                            "Contact Us",
                            style: TextSizes.primaryColor12pxw600,
                          ),

                          Expanded(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Icon(
                                Icons.chevron_right,color: primaryColor,
                                size: 27,
                              ),
                            ),
                          )




                        ],
                      ),
                    ),
                  ),


                  GestureDetector(
                    onTap: () async{
                      final prefs = await SharedPreferences.getInstance();

                     await _firebaseAuth.signOut();

                      prefs.remove(prefs_userLoggedIn);
                      prefs.remove(prefs_username);

                      Navigator.pop(context);
                      Navigator.push(context, PageTransition(child: Login(),
                          type: PageTransitionType.rightToLeft));


                      Utils.showToastMessage(toastMsg: "Logged out successfully");
                    },
                    behavior: HitTestBehavior.translucent,
                    child: Container(
                      height: 55,
                      padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal*5),
                      child: Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            child: Image.asset("assets/images/ic_logout.png",fit: BoxFit.fill,),
                          ),

                          SizedBox(width: SizeConfig.safeBlockHorizontal*5,),

                          Text(
                            "Logout",
                            style: TextSizes.primaryColor12pxw600,
                          ),

                          Expanded(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Icon(
                                Icons.chevron_right,color: primaryColor,
                                size: 27,
                              ),
                            ),
                          )




                        ],
                      ),
                    ),
                  )


                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
