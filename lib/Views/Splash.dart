import 'package:agri_cure/Helpers/SizeConfig.dart';
import 'package:agri_cure/Helpers/TextSizes.dart';
import 'package:agri_cure/Theme/theme.dart';
import 'package:agri_cure/Utils/Constants.dart';
import 'package:agri_cure/Views/HomeScreen.dart';
import 'package:agri_cure/Views/Login.dart';
import 'package:agri_cure/Views/OnboardingScreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatefulWidget {

  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {


  @override
  void initState() {
    // TODO: implement initState
    navigateScreen();
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: primaryScreenBg,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Image.asset("assets/images/splash_ic.png",height: SizeConfig.safeBlockVertical*20,
          width: SizeConfig.safeBlockVertical*27,
          ),

          SizedBox(
            height: SizeConfig.safeBlockVertical*4,
          ),


          Container(
            color: primaryColor,
            width: SizeConfig.screenWidth*0.75,
            height: 3,
          ),


          SizedBox(height: SizeConfig.safeBlockVertical*1,),

          Center(
            child: Text("AgriCure", style: TextSizes.primaryColor22px.copyWith(
              fontWeight: FontWeight.w800,
              fontSize: 32
            ),),
          ),

          SizedBox(height: SizeConfig.safeBlockVertical*1,),
          Container(
            color: primaryColor,
            width: SizeConfig.screenWidth*0.75,
            height: 3,
          ),
        ],
      ),
    );
  }

  void navigateScreen() async{
    final prefs = await SharedPreferences.getInstance();
    final String? pref_onboarding =   prefs.getString(prefs_onboarding_viewed);
    final bool? pref_loggedIn =   prefs.getBool(prefs_userLoggedIn);


    Future.delayed(Duration(seconds: 2),(){

      Navigator.pushReplacement(context,MaterialPageRoute(builder: (ctx)=> OnboardingScreen()));


      // if (pref_onboarding == null ){
      //   Navigator.pushReplacement(context,MaterialPageRoute(builder: (ctx)=> OnboardingScreen()));
      //
      // }
      // else {
      //   if (pref_loggedIn == null) {
      //     Navigator.pushReplacement(context,MaterialPageRoute(builder: (ctx)=> Login()));
      //     return;
      //   }
      //
      //   Navigator.pushReplacement(context,MaterialPageRoute(builder: (ctx)=> HomeScreen()));
      //
      // }

    });



  }
}
