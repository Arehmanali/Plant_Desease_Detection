import 'dart:io';

import 'package:agri_cure/Helpers/SizeConfig.dart';
import 'package:agri_cure/Helpers/TextSizes.dart';
import 'package:agri_cure/Theme/theme.dart';
import 'package:agri_cure/Views/ScanResultDetails.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

//ignore: must_be_immutable
class ScanResult extends StatefulWidget {

   String? name;
   File? image;


  ScanResult({this.name,this.image});

  @override
  _ScanResultState createState() => _ScanResultState();
}

class _ScanResultState extends State<ScanResult> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryScreenBg,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal*3,
          vertical: SizeConfig.safeBlockVertical*2
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.arrow_back_ios,
                  color: Colors.black,
                    size: 28,
                  )),


                  Text("Results", style: TextSizes.black16pxw700,)
                ],
              ),

              SizedBox(height: SizeConfig.safeBlockVertical*3,),

              Container(
                width: double.infinity,
                height: SizeConfig.safeBlockVertical*25,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.file(widget.image!,fit: BoxFit.cover,),
                ),
              ),

              SizedBox(height: SizeConfig.safeBlockVertical*3,),

              Text(widget.name!,style: TextSizes.primaryColor14pxw600,),



              Spacer(
                flex: 1,
              ),

              Container(
                width: SizeConfig.safeBlockHorizontal*45,
                height: SizeConfig.safeBlockHorizontal*45,
                child: Lottie.asset("assets/jsonFiles/success.json",fit: BoxFit.fill),
              ),

              Spacer(
                flex: 1,
              ),

              (widget.name!.toLowerCase().contains("invalid") || widget.name!.toLowerCase().contains("healthy"))
                ?Container():ElevatedButton(onPressed: (){

                  Navigator.push(context, PageTransition(child: ScanResultDetails(
                    widget.name!,
                  ), type:
                  PageTransitionType.rightToLeft));
                },
                    style: ElevatedButton.styleFrom(
                        primary: primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)
                        )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 20),
                      child: Text("Disease information",style: TextSizes.black14pxw500.copyWith(
                          color: Colors.white
                      ),),
                    )),




              Spacer(
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
