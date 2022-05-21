import 'package:agri_cure/Controllers/DiseaseIdentificationProvider.dart';
import 'package:agri_cure/Helpers/SizeConfig.dart';
import 'package:agri_cure/Helpers/TextSizes.dart';
import 'package:agri_cure/Theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class DiseaseIdentification extends StatefulWidget {
  const DiseaseIdentification({Key? key}) : super(key: key);

  @override
  _DiseaseIdentificationState createState() => _DiseaseIdentificationState();
}

class _DiseaseIdentificationState extends State<DiseaseIdentification> {

  late DiseaseIdentificationProvider _diseaseProvider ;

  @override
  void initState() {
    // TODO: implement initState
    setupData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryScreenBg,
      body: Consumer<DiseaseIdentificationProvider>(
       builder: (ctx,diseaseProvider,ch)
        =>SafeArea(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.safeBlockVertical*7,),

                Text("Disease Detection", style: TextSizes.primaryColor18pxw700,),

                SizedBox(height: SizeConfig.safeBlockVertical*5,),
                Container(
                  height: SizeConfig.safeBlockVertical*25,
                  width: SizeConfig.safeBlockVertical*25,
                  child: Lottie.asset("assets/jsonFiles/leaf-scanning.json",fit: BoxFit.fill),
                ),

                Padding(
                  padding: const EdgeInsets.all(35.0),
                  child: Text("To search the disease please capture or select image",
                    textAlign: TextAlign.center,
                    style: TextSizes.primaryColor14pxw600,
                  ),
                ),

                Expanded(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: SizeConfig.screenWidth*0.75,

                          height: 50,
                          child: ElevatedButton(
                              onPressed: diseaseProvider.cameraPressed,
                              style: ElevatedButton.styleFrom(
                                  primary: primaryColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)
                                  )
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: SizeConfig.safeBlockHorizontal*2,
                                  ),

                                  Icon(Icons.camera_alt, color: Colors.white,size: 28,),

                                  SizedBox(width: SizeConfig.safeBlockHorizontal*15,),

                                  Expanded(child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Camera", style: TextSizes.black14pxw500.copyWith(
                                        color: Colors.white
                                    ),),
                                  ))

                                ],
                              )
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical*4,
                        ) ,
                        Container(
                          width: SizeConfig.screenWidth*0.75,
                          height: 50,
                          child: ElevatedButton(
                              onPressed: diseaseProvider.galleryPressed,
                              style: ElevatedButton.styleFrom(
                                  primary: primaryColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)
                                  )
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: SizeConfig.safeBlockHorizontal*2,
                                  ),

                                  Icon(Icons.cloud_download_sharp, color: Colors.white,size: 28,),

                                  SizedBox(width: SizeConfig.safeBlockHorizontal*15,),
                                  Expanded(child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Gallery", style: TextSizes.black14pxw500.copyWith(
                                        color: Colors.white
                                    ),),
                                  ))

                                ],
                              )
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
        ),
      ),

    );
  }

  void setupData() {
    _diseaseProvider = Provider.of<DiseaseIdentificationProvider>(context,listen: false);
    _diseaseProvider.loadInsectsModel();

  }


}
