import 'package:agri_cure/Helpers/SizeConfig.dart';
import 'package:agri_cure/Helpers/TextSizes.dart';
import 'package:agri_cure/Theme/theme.dart';
import 'package:agri_cure/Utils/Constants.dart';
import 'package:agri_cure/Views/HomeScreen.dart';
import 'package:agri_cure/Views/Login.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import  'package:agri_cure/Helpers/TextSizes.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  List<PageViewModel> pages = [
    PageViewModel(
      title: "Disease check",
      body: "Take a picture of plant to detect disease , and safe it",
      image: Center(child: Container(
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight*0.5,
        child: Image.asset("assets/images/onboarding_image1.jpeg", fit: BoxFit.fill,
        ),
      )),
      decoration: const PageDecoration(
        pageColor: primaryScreenBg,
        bodyTextStyle: TextStyle(
            fontFamily: "Montserrat",
            fontSize: 14,
            color: primaryColor,
            fontWeight: FontWeight.w500
        ),
        bodyPadding: EdgeInsets.symmetric(horizontal:35),
        titleTextStyle: TextStyle(
            fontFamily: "Montserrat",
            fontSize: 18,
            color: primaryColor,
            fontWeight: FontWeight.w700
        ),
      ),
    ),
    PageViewModel(
      title: "Disease Information",
      body: "Take a picture of plant to detect disease , and safe it",
      image: Center(child: Container(
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight*0.5,
        child: Image.asset("assets/images/onboarding_image2.JPG",fit: BoxFit.fill,
        ),
      )),
      decoration: const PageDecoration(
        pageColor: primaryScreenBg,
        bodyTextStyle: TextStyle(
            fontFamily: "Montserrat",
            fontSize: 14,
            color: primaryColor,
            fontWeight: FontWeight.w500
        ),
        bodyPadding: EdgeInsets.symmetric(horizontal:35),
        titleTextStyle: TextStyle(
            fontFamily: "Montserrat",
            fontSize: 18,
            color: primaryColor,
            fontWeight: FontWeight.w700
        ),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IntroductionScreen(
          pages: pages,
          onDone: doneTapped,
          showBackButton: false,
          showSkipButton: false,
          showNextButton: true,

          next: Text("Next", style: TextSizes.primaryColor14pxw600,),
          done:  Text("Get Started", style: TextSizes.primaryColor14pxw600,),
        ),
      ),
    );



  }

  void doneTapped() async{
    final prefs = await SharedPreferences.getInstance();
    //prefs.setString(prefs_onboarding_viewed, "viewed");

    final String? pref_onboarding =   prefs.getString(prefs_onboarding_viewed);
    final bool? pref_loggedIn =   prefs.getBool(prefs_userLoggedIn);

    if (pref_loggedIn == null) {
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (ctx)=> Login()));
      return;
    }

    Navigator.pushReplacement(context,MaterialPageRoute(builder: (ctx)=> HomeScreen()));


    //  Navigator.push(context, PageTransition(child: Login(),duration: Duration(milliseconds: 500), type: PageTransitionType.rightToLeft));

  }
}
