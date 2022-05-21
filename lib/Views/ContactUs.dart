import 'package:agri_cure/Helpers/SizeConfig.dart';
import 'package:agri_cure/Helpers/TextSizes.dart';
import 'package:agri_cure/Theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatefulWidget {

  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryScreenBg,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal*4,
        vertical: SizeConfig.safeBlockVertical*3
        ),
        child: Column(
          children: [
              Text("Get in touch",style: TextSizes.primaryColor16pxw700.copyWith(
                fontWeight: FontWeight.w800,
                fontSize: 18
              ),),

              SizedBox(height: SizeConfig.safeBlockVertical*4,),


            Text("If you have any query, feel free to ask. You will get reply within 24 hours",
              textAlign: TextAlign.center,
              style: TextSizes.primaryColor14pxw500,),


            Spacer(flex: 1,),
            
            Container(
              width: SizeConfig.screenWidth*0.70,
              height: SizeConfig.safeBlockVertical*30,
              child: Lottie.asset("assets/jsonFiles/contact-us.json",fit: BoxFit.fill),
            ),
            
            Spacer(flex: 1,),
            
            

            Container(
              width: SizeConfig.screenWidth,
              height: 1,
              color: Colors.black12,
            ),

            GestureDetector(
              onTap: (){
                _sendingEmail();
              },
              behavior: HitTestBehavior.translucent,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Icon(Icons.email_outlined,size: 30,color: primaryColor,),
                    SizedBox(width: SizeConfig.safeBlockHorizontal*2,),
                    Text("mahneem.pathalogist@gmail.com", style: TextSizes.primaryColor12pxw500,)
                  ],
                ),
              ),
            ),

            Container(
              width: SizeConfig.screenWidth,
              height: 1,
              color: Colors.black12,
            ),



            SizedBox(height: SizeConfig.safeBlockVertical*5,),


            Container(
              width: SizeConfig.screenWidth,
              height: 1,
              color: Colors.black12,
            ),

            GestureDetector(
              onTap: (){
                _makePhoneCall();
              },
              behavior: HitTestBehavior.translucent,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Icon(Icons.call,size: 30,color: primaryColor,),
                    SizedBox(width: SizeConfig.safeBlockHorizontal*2,),
                    Text("+92333 1402007", style: TextSizes.primaryColor12pxw500,)
                  ],
                ),
              ),
            ),

            Container(
              width: SizeConfig.screenWidth,
              height: 1,
              color: Colors.black12,
            ),


            Spacer(flex: 1,),
          ],
        ),
      ),
    );
  }


  _sendingEmail() async {
    const url = 'mailto:mahneem.pathalogist@gmail.com';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }


  _makePhoneCall() async {
    launchUrl(Uri.parse("tel:+92333 1402007"));
  }


}
