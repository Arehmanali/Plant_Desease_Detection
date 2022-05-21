import 'package:agri_cure/Helpers/SizeConfig.dart';
import 'package:agri_cure/Helpers/TextSizes.dart';
import 'package:agri_cure/Models/DiseaseInfoModel.dart';
import 'package:agri_cure/Theme/theme.dart';
import 'package:agri_cure/Views/ScanResultDetails.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:page_transition/page_transition.dart';

class DiseaseInformation extends StatefulWidget {
  const DiseaseInformation({Key? key}) : super(key: key);

  @override
  _DiseaseInformationState createState() => _DiseaseInformationState();
}

class _DiseaseInformationState extends State<DiseaseInformation> {

   List<DiseaseInfoModel> _diseaseList= [
     DiseaseInfoModel(imagePath: "assets/images/DiseaseInformation/Apple Black Rot.png",name:"Apple Black Rot" ),
     DiseaseInfoModel(imagePath: "assets/images/DiseaseInformation/Apple Cedar Rust.png",name:"Apple Cedar Rust" ),
     DiseaseInfoModel(imagePath: "assets/images/DiseaseInformation/Apple Scab.jpg",name:"Apple Scab" ),
     DiseaseInfoModel(imagePath: "assets/images/DiseaseInformation/Tomato Bacterial Spot.png",name:"Tomato Bacterial Spot" ),
     DiseaseInfoModel(imagePath: "assets/images/DiseaseInformation/Tomato Early Blight.png",name:"Tomato Early Blight" ),
     DiseaseInfoModel(imagePath: "assets/images/DiseaseInformation/Tomato Late Blight.png",name:"Tomato Late Blight" ),
     DiseaseInfoModel(imagePath: "assets/images/DiseaseInformation/Tomato Leaf Mold.png",name:"Tomato Leaf Mold" ),
     DiseaseInfoModel(imagePath: "assets/images/DiseaseInformation/Tomato Mosaic Virus.png",name:"Tomato Mosaic Virus" ),
     DiseaseInfoModel(imagePath: "assets/images/DiseaseInformation/Tomato Septoria Leaf Spot.png",name:"Tomato Septoria Leaf Spot" ),
     DiseaseInfoModel(imagePath: "assets/images/DiseaseInformation/Tomato Spider Mite.png",name:"Tomato Spider Mite" ),
     DiseaseInfoModel(imagePath: "assets/images/DiseaseInformation/Tomato Target Spot.png",name:"Tomato Target Spot" ),
     DiseaseInfoModel(imagePath: "assets/images/DiseaseInformation/Tomato Yellow Leaf Curl Virus.png",name:"Tomato Yellow Leaf Curl Virus" ),
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryScreenBg,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: SizeConfig.safeBlockVertical*3,),

            Text("Disease information",style: TextSizes.primaryColor18pxw700,),

            SizedBox(height: SizeConfig.safeBlockVertical*3,),

            Container(
              height: SizeConfig.screenHeight*0.6,
                width: SizeConfig.screenWidth,
                child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 1.3,
                    viewportFraction: 0.85,
                    enlargeCenterPage: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                  ),
                  items: _diseaseList
                      .map((item) => GestureDetector(
                    onTap: (){
                      Navigator.push(context, PageTransition(
                          child: ScanResultDetails(
                            item.name!
                          ), type: PageTransitionType.rightToLeft));
                    },
                    behavior: HitTestBehavior.translucent,
                    child: Container(
                        height: SizeConfig.screenHeight*0.8,
                        width: SizeConfig.screenWidth,
                        child: Stack(
                          children: [
                            Center(
                                child:
                                Container(

                                    width: SizeConfig.screenWidth*0.9,
                                    height: SizeConfig.screenHeight*0.8,
                                    padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal*2),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Container(
                                            foregroundDecoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                colors: [Colors.black, Colors.transparent, Colors.transparent, Colors.black],
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                stops: [0, 0.2, 0.8, 1],
                                              ),
                                            ),
                                            child: Image.asset(item.imagePath!, fit: BoxFit.cover))))),

                            Positioned(
                              bottom: 20,
                              left: 15,
                              child: Text(item.name!,style: TextSizes.black14pxw600.copyWith(
                                color: Colors.white
                              ),),
                            )
                          ],
                        ),
                    ),
                      ))
                      .toList(),
                )),

               SizedBox(height: SizeConfig.safeBlockVertical*5,),

            Text("Note: For more details click the item",style: TextSizes.primaryColor16pxw700,)
          ],
        ),
      ),
    );
  }
}
