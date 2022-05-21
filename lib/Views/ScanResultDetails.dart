import 'package:agri_cure/Helpers/SizeConfig.dart';
import 'package:agri_cure/Helpers/TextSizes.dart';
import 'package:agri_cure/Views/WebviewScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../Theme/theme.dart';
class ScanResultDetails extends StatefulWidget {


    String name;


    ScanResultDetails(this.name);

  @override
  _ScanResultDetailsState createState() => _ScanResultDetailsState();
}

class _ScanResultDetailsState extends State<ScanResultDetails> {
  @override
  void initState() {
    // TODO: implement initState
    print("Name: ${widget.name}");
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryScreenBg,
      body: SafeArea(
        child:Stack(
          children: [
            Center(
              child: Container(
                height: SizeConfig.screenHeight*0.7,
                width: SizeConfig.screenWidth*0.9,
                child: Opacity(
                    opacity: 0.15,
                    child: Image.asset("assets/images/splash_ic.png",fit: BoxFit.contain,)),
              ),
            ),
            Positioned.fill(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal*3,
                  vertical: SizeConfig.safeBlockVertical*2
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 65,
                        child: Row(
                          children: [
                            IconButton(onPressed: (){

                              Navigator.pop(context);

                            }, icon: Icon(Icons.arrow_back_ios,
                            size: 29,
                              color: Colors.black,
                            )),
                            SizedBox(width: SizeConfig.safeBlockHorizontal*2,),

                            Text(widget.name,style: TextSizes.black16pxw700,)
                          ],
                        ),
                      ),

                      SizedBox(
                        height: SizeConfig.safeBlockVertical*4,
                      ),


                      Container(
                        child: ((){
                          if (widget.name.contains("Apple Scab")){
                            return Column(
                                children:[
                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("INTRODUCTION",style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),

                                        Text("Apple scab is a foliar leaf disease caused by the fungus Venturia inaequalis. Severely infected trees become defoliated and infected fruit are not marketable. Apple scab also attacks flowering crab apples, mountain ash and firethorn.",
                                          style: TextSizes.black12pxw500.copyWith(
                                              color: Colors.white
                                          ),
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                      ],
                                    ),
                                  ),

                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*5,
                                  ),

                                  Row(
                                    children: [
                                      Expanded(child: Container(
                                        height: SizeConfig.safeBlockVertical*25,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset("assets/images/DiseaseInformation/Apple Scab.jpg",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      )),

                                      SizedBox(width: SizeConfig.safeBlockHorizontal*5,),
                                      Expanded(child: Container(
                                        height: SizeConfig.safeBlockVertical*25,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset("assets/images/DiseaseInformation/Apple Scab-1.jpg",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      )),
                                    ],
                                  ),



                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*4,
                                  ),

                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("SYMPTOMS",style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),

                                        Text("If infected leaf litter gets wet in spring, spores are released and may be carried by wind or rain to infect new leaf and blossom tissue. Infection and subsequent lesion development occur on both sides of leaves, usually developing first on the lower side. On leaves, young lesions are velvety brown to olive green with indistinct margins and are often not noticeable until after petal fall. With time, olive green lesions turn dark brown to black. The number of lesions on leaves varies depending on the season and variety susceptibility. Lesions on older leaves are typically raised, dark green to gray brown with distinct margins, and cause cupping on the underside of the leaf. Leaves that are heavily infected with scab will curl, shrivel and fall from the tree."
                                          ,style: TextSizes.black12pxw500.copyWith(
                                              color: Colors.white
                                          ),
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                      ],
                                    ),
                                  ),



                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*4,
                                  ),

                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("APPLE SCAB TREATMENT & MANAGEMENT",style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),

                                        Text("•	Remove and destroy the fallen leaf litter so that the fungus cannot overwinter. This may reduce the disease pressure in the following spring, but will not likely eliminate the disease."
                                            "\n\n•	Do not overcrowd plants, and make sure the canopy has proper airflow. This will decrease the conditions favorable for disease development."
                                            "\n\n•	Fungicide applications at 2-week intervals beginning when new growth is expanding in the spring."
                                            "\n\n•	Crabapple cultivars that are resistant to apple scab are widely available."
                                          ,style: TextSizes.black12pxw500.copyWith(
                                              color: Colors.white
                                          ),
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                      ],
                                    ),
                                  ),


                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*4,
                                  ),

                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("MORE INFORMATION",style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),

                                        Text("Visit the below link for further information",style: TextSizes.black12pxw500.copyWith(
                                              color: Colors.white
                                          ),
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*2,),

                                        GestureDetector(
                                          onTap: (){
                                            Navigator.push(context, PageTransition(child: WebviewScreen(
                                              name: "Apple scab",
                                              webviewUrl: "https://extension.umn.edu/plant-diseases/apple-scab",
                                            ), type: PageTransitionType.rightToLeft));
                                          },
                                          behavior: HitTestBehavior.translucent,
                                          child: Container(
                                            height: 55,
                                            child: Text("https://extension.umn.edu/plant-diseases/apple-scab",style: TextSizes.black12pxw500.copyWith(
                                                color: Colors.white,
                                              decoration: TextDecoration.underline
                                            ),
                                            ),
                                          ),
                                        )

                                      ],
                                    ),
                                  ),
                                ]

                            );
                          }
                          else if (widget.name.contains("Apple Black Rot")){
                            return Column(
                                children:[
                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("INTRODUCTION",style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),

                                        Text("The disease first appears as a tiny purple fleck, which eventually enlarges into a circular lesion about 4-5 mm in diameter. As the lesion enlarges, the margin remains purple while the Centre turns tan or brown with a light Centre (“frog-eye” appearance). Severely infected leaves eventually turn yellow and drop. Defoliation year after year stresses trees and greatly reduces vigour.",
                                          style: TextSizes.black12pxw500.copyWith(
                                              color: Colors.white
                                          ),
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                      ],
                                    ),
                                  ),

                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*5,
                                  ),

                                  Row(
                                    children: [
                                      Expanded(child: Container(
                                        height: SizeConfig.safeBlockVertical*25,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset("assets/images/DiseaseInformation/Apple Black Rot.png",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      )),

                                      SizedBox(width: SizeConfig.safeBlockHorizontal*5,),
                                      Expanded(child: Container(
                                        height: SizeConfig.safeBlockVertical*25,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset("assets/images/DiseaseInformation/Apple Black Rot-1.jpg",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      )),
                                    ],
                                  ),



                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*4,
                                  ),

                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("SYMPTOMS",style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),

                                        Text("Infected leaves develop frog-eye leaf spot. These are circular spots with purplish or reddish edges and light tan interiors. The first signs of black rot are small, purple spots appearing on the upper surfaces of leaves and enlarging into circles 1/8 to 1/4 inch in diameter. Leaf margins remain purple, while the centers turn brown, tan, or yellowish brown, giving the lesions a frogeye appearance. Multiple small, black pycnidia (pimple like fruiting bodies of the fungus) may appear in the centers and can be viewed easily using a hand lens.",style: TextSizes.black12pxw500.copyWith(
                                              color: Colors.white
                                          ),
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                      ],
                                    ),
                                  ),



                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*4,
                                  ),

                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("APPLE BLACK ROT TREATMENT & MANAGEMENT",style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),

                                        Text("•	Prune out cankers, dead branches, twigs, etc. which serve as inoculum sources and dispose of dead wood. This should be an important component of both current-season and long-range management."
                                        "\n\n•	Prune and remove cankers at least 15 inches below the basal end; properly dispose of prunings by burial or burning."
                                          "\n\n•	Remove all mummified fruit."
                                        "\n\n•	Control fire blight by pruning out infected wood or controlling insect vectors."
                                        "\n\n•	Maintain healthy trees and prevent tree stress."
                                          ,style: TextSizes.black12pxw500.copyWith(
                                              color: Colors.white
                                          ),
                                        ),


                                      ],
                                    ),
                                  ),


                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*4,
                                  ),

                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("MORE INFORMATION",style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),

                                        Text("Visit the below link for further information",style: TextSizes.black12pxw500.copyWith(
                                            color: Colors.white
                                        ),
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*2,),

                                        GestureDetector(
                                          onTap: (){
                                            Navigator.push(context, PageTransition(child: WebviewScreen(
                                              name: "Apple Black Rot",
                                              webviewUrl: "https://extension.umn.edu/plant-diseases/black-rot-apple",
                                            ), type: PageTransitionType.rightToLeft));
                                          },
                                          behavior: HitTestBehavior.translucent,
                                          child: Container(
                                            height: 55,
                                            child: Text("https://extension.umn.edu/plant-diseases/black-rot-apple",style: TextSizes.black12pxw500.copyWith(
                                                color: Colors.white,
                                                decoration: TextDecoration.underline
                                            ),
                                            ),
                                          ),
                                        )

                                      ],
                                    ),
                                  ),


                                ]

                            );
                          }
                          else if (widget.name.contains("Apple Cedar Rust")){
                            return Column(
                                children:[
                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("INTRODUCTION",style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),

                                        Text("Eastern red cedar (Juniperus virginianae) is the alternate host for cedar-apple rust. However, the symptoms on eastern red cedar look completely different than on apple. Cedar-apple rust infects both the leaves and fruit of susceptible apple cultivars.",style: TextSizes.black12pxw500.copyWith(
                                              color: Colors.white
                                          ),
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                      ],
                                    ),
                                  ),

                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*5,
                                  ),

                                  Row(
                                    children: [
                                      Expanded(child: Container(
                                        height: SizeConfig.safeBlockVertical*25,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset("assets/images/DiseaseInformation/Apple Cedar Rust.png",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      )),

                                      SizedBox(width: SizeConfig.safeBlockHorizontal*5,),
                                      Expanded(child: Container(
                                        height: SizeConfig.safeBlockVertical*25,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset("assets/images/DiseaseInformation/Apple Cedar Rust-1.jpg",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      )),
                                    ],
                                  ),



                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*4,
                                  ),

                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("SYMPTOMS",style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),

                                        Text("Symptoms begin to appear on the upper surface of apple leaves shortly after bloom. Leaves that are three to four weeks’ old are fairly resistant to infection, but younger leaves and fruit are susceptible, depending on the cultivar. Small, pale yellow spots appear on the upper surface of leaves and on fruit. Eventually, small black spots (spermagonia) appear within the centre of the lesions. The lesions grow larger and more orange-colored, often with a red margin.",
                                          style: TextSizes.black12pxw500.copyWith(
                                              color: Colors.white
                                          ),
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                      ],
                                    ),
                                  ),



                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*4,
                                  ),

                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("APPLE CEDAR RUST TREATMENT & MANAGEMENT",style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),

                                        Text("•	Choose resistant cultivars when available."
                          "\n\n•	Rake up and dispose of fallen leaves and other debris from under trees."
                          "\n\n•	Remove galls from infected junipers. In some cases, juniper plants should be removed entirely."
                          "\n\n•	Apply preventative, disease-fighting fungicides labeled for use on apples weekly, starting with bud break, to protect trees from spores being released by the juniper host. This occurs only once per year, so additional applications after this springtime spread are not necessary."
                          "\n\n•	On juniper, rust can be controlled by spraying plants with a copper solution (0.5 to 2.0 oz./ gallon of water) at least four times between late August and late October."
                                        "\n\n",style: TextSizes.black12pxw500.copyWith(
                                              color: Colors.white
                                          ),
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),





                                      ],
                                    ),
                                  ),


                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*4,
                                  ),

                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("MORE INFORMATION",style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),

                                        Text("Visit the below link for further information",style: TextSizes.black12pxw500.copyWith(
                                            color: Colors.white
                                        ),
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*2,),

                                        GestureDetector(
                                          onTap: (){
                                            Navigator.push(context, PageTransition(child: WebviewScreen(
                                              name: "Apple Cedar Rust",
                                              webviewUrl: "https://extension.umn.edu/plant-diseases/cedar-apple-rust",
                                            ), type: PageTransitionType.rightToLeft));
                                          },
                                          behavior: HitTestBehavior.translucent,
                                          child: Container(
                                            height: 55,
                                            child: Text("https://extension.umn.edu/plant-diseases/cedar-apple-rust"
                                              ,style: TextSizes.black12pxw500.copyWith(
                                                  color: Colors.white,
                                                  decoration: TextDecoration.underline
                                              ),
                                            ),
                                          ),
                                        )

                                      ],
                                    ),
                                  ),


                                ]

                            );
                          }
                          else if (widget.name.contains("Tomato Bacterial Spot")){
                            return Column(
                                children:[
                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("INTRODUCTION",style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),

                                        Text("The bacterial spot pathogen may produce lesions on all aboveground parts of the plant- leaves, stems, flowers and fruit. It is difficult to reliably distinguish bacterial spot from bacterial speck based on visual symptoms, especially in the early stages.",
                                          style: TextSizes.black12pxw500.copyWith(
                                              color: Colors.white
                                          ),
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                      ],
                                    ),
                                  ),

                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*5,
                                  ),

                                  Row(
                                    children: [
                                      Expanded(child: Container(
                                        height: SizeConfig.safeBlockVertical*25,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset("assets/images/DiseaseInformation/Tomato Bacterial Spot.png",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      )),

                                      SizedBox(width: SizeConfig.safeBlockHorizontal*5,),
                                      Expanded(child: Container(
                                        height: SizeConfig.safeBlockVertical*25,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset("assets/images/DiseaseInformation/Tomato Bacterial Spot-1.png",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      )),
                                    ],
                                  ),



                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*4,
                                  ),

                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("SYMPTOMS",style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),

                                        Text("Initial leaf symptoms are small, circular-to-irregular, dark lesions, which may be surrounded by a yellow halo. The lesions tend to concentrate on the leaf edges and tips and may increase in size to a diameter of 3- 5 mm (1/8- 3/16 in.). Infected leaves may develop a scorched appearance. When spots are numerous, foliage turns yellow and eventually dies, leading to defoliation of the lower portion of the plant.",
                                          style: TextSizes.black12pxw500.copyWith(
                                              color: Colors.white
                                          ),
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                      ],
                                    ),
                                  ),



                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*4,
                                  ),

                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("TOMATO BACTERIAL SPOT TREATMENT & MANAGEMENT",
                                            style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),

                                        Text("•	Look for leaves with spots, especially during periods of wet, humid weather."
                          "\n\n •	Remove leaves with symptoms."
                          "\n\n•	Spots on fruit can allow secondary pathogens to enter fruit, some of which can make people sick."
                          "\n\n•	Hot water treatment can be used to kill bacteria on and in seed."
                          "\n\n•	For tomatoes, streptomycin is labeled for greenhouse use."
                          ,style: TextSizes.black12pxw500.copyWith(
                                              color: Colors.white
                                          ),
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),



                                      ],
                                    ),
                                  ),



                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*4,
                                  ),

                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("MORE INFORMATION",style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),

                                        Text("Visit the below link for further information",style: TextSizes.black12pxw500.copyWith(
                                            color: Colors.white
                                        ),
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*2,),

                                        GestureDetector(
                                          onTap: (){
                                            Navigator.push(context, PageTransition(child: WebviewScreen(
                                              name: "Tomato Bacterial Spot",
                                              webviewUrl: "https://extension.umn.edu/disease-management/bacterial-spot-tomato-and-pepper",
                                            ), type: PageTransitionType.rightToLeft));
                                          },
                                          behavior: HitTestBehavior.translucent,
                                          child: Container(
                                            height: 55,
                                            child: Text("https://extension.umn.edu/disease-management/bacterial-spot-tomato-and-pepper"
                                              ,style: TextSizes.black12pxw500.copyWith(
                                                  color: Colors.white,
                                                  decoration: TextDecoration.underline
                                              ),
                                            ),
                                          ),
                                        )

                                      ],
                                    ),
                                  ),


                                ]

                            );
                          }
                          else if (widget.name.contains("Tomato Early Blight")){
                            return Column(
                                children:[
                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("INTRODUCTION",style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),

                                        Text("Early blight is a common tomato disease caused by the fungus Alternaria solani. It can affect almost all parts of the tomato plants, including the leaves, stems, and fruits. The plants may not die, but they will be weakened and will set fewer tomatoes than normal. Early blight generally attacks older plants, but it can also occur on seedlings. Stressed plants or plants in poor health are especially susceptible. Early blight is also a problem with potatoes",style: TextSizes.black12pxw500.copyWith(
                                              color: Colors.white
                                          ),
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                      ],
                                    ),
                                  ),

                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*5,
                                  ),

                                  Row(
                                    children: [
                                      Expanded(child: Container(
                                        height: SizeConfig.safeBlockVertical*25,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset("assets/images/DiseaseInformation/Tomato Early Blight.png",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      )),

                                      SizedBox(width: SizeConfig.safeBlockHorizontal*5,),
                                      Expanded(child: Container(
                                        height: SizeConfig.safeBlockVertical*25,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset("assets/images/DiseaseInformation/Tomato Early Blight-1.png",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      )),
                                    ],
                                  ),



                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*4,
                                  ),

                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("SYMPTOMS",style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),

                                        Text("Dark spots with concentric rings develop on older leaves first. The surrounding leaf area may turn yellow. Affected leaves may die prematurely, exposing the fruits to sun scald."
                          "Dark lesions on the stems start off small and slightly sunken. As they get larger, they elongate and you will start to see concentric markings like the spots on the leaves. Spots that form near ground level can cause some girdling of the stem or collar rot. Plants may survive, but they will not thrive or produce many tomatoes."
                          ,style: TextSizes.black12pxw500.copyWith(
                                              color: Colors.white
                                          ),
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                      ],
                                    ),
                                  ),



                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*4,
                                  ),

                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("TOMATO EARLY BLIGHT  TREATMENT & MANAGEMENT",
                                            style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),

                                        Text("•	Prune or stake plants to improve air circulation and reduce fungal problems."
                                        "\n\n •	Make sure to disinfect your pruning shears (one part bleach to 4 parts water) after each cut."
                          "\n\n •	Keep the soil under plants clean and free of garden debris. Add a layer of organic compost to prevent the spores from splashing back up onto vegetation."
                          "\n\n •	Drip irrigation and soaker hoses can be used to help keep the foliage dry."
                          "\n\n •	For best control, apply copper-based fungicides early, two weeks before disease normally appears or when weather forecasts predict a long period of wet weather. Alternatively, begin treatment when disease first appears, and repeat every 7-10 days for as long as needed."
                          ,style: TextSizes.black12pxw500.copyWith(
                                              color: Colors.white
                                          ),
                                        ),



                                      ],
                                    ),
                                  ),

                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*4,
                                  ),

                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("MORE INFORMATION",style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),

                                        Text("Visit the below link for further information",style: TextSizes.black12pxw500.copyWith(
                                            color: Colors.white
                                        ),
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*2,),

                                        GestureDetector(
                                          onTap: (){
                                            Navigator.push(context, PageTransition(child: WebviewScreen(
                                              name: "Tomato Early Blight",
                                              webviewUrl: "https://extension.umn.edu/disease-management/early-blight-tomato",
                                            ), type: PageTransitionType.rightToLeft));
                                          },
                                          behavior: HitTestBehavior.translucent,
                                          child: Container(
                                            height: 55,
                                            child: Text("https://extension.umn.edu/disease-management/early-blight-tomato"
                                              ,style: TextSizes.black12pxw500.copyWith(
                                                  color: Colors.white,
                                                  decoration: TextDecoration.underline
                                              ),
                                            ),
                                          ),
                                        )

                                      ],
                                    ),
                                  ),

                                  ]

                            );
                          }
                          else if (widget.name.contains("Tomato Late Blight")){
                            return Column(
                                children:[
                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("INTRODUCTION",style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),

                                        Text("Late blight is a potentially devastating disease of tomato and potato, infecting leaves, stems, tomato fruit, and potato tubers. On tomatoes, the fungus-like organism can destroy a crop within days if conditions are right. Vigilant observation and pre-treatment are the only defenses against late tomato blight.",
                                          style: TextSizes.black12pxw500.copyWith(
                                              color: Colors.white
                                          ),
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                      ],
                                    ),
                                  ),

                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*5,
                                  ),

                                  Row(
                                    children: [
                                      Expanded(child: Container(
                                        height: SizeConfig.safeBlockVertical*25,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset("assets/images/DiseaseInformation/Tomato Late Blight.png",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      )),

                                      SizedBox(width: SizeConfig.safeBlockHorizontal*5,),
                                      Expanded(child: Container(
                                        height: SizeConfig.safeBlockVertical*25,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset("assets/images/DiseaseInformation/Tomato Late Blight-1.png",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      )),
                                    ],
                                  ),



                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*4,
                                  ),

                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("SYMPTOMS",style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),

                                        Text("Leaf symptoms of late blight first appear as small, water-soaked areas that rapidly enlarge to form purple-brown, oily-appearing blotches. On the lower side of leaves, rings of grayish white mycelium and spore-forming structures may appear around the blotches. Entire leaves die and infections quickly spread to petioles and young stems.",style: TextSizes.black12pxw500.copyWith(
                                              color: Colors.white
                                          ),
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                      ],
                                    ),
                                  ),



                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*4,
                                  ),

                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("TOMATO LATE BLIGHT  TREATMENT & MANAGEMENT",
                                            style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),

                                        Text("•	Keep leaves as dry as possible."
                          "\n\n •	Water with drip irrigation or a soaker hose."
                          "\n\n •	Water in the morning so leaves dry quickly in the sun."
                          "\n\n •	Stake or cage plants."
                          "\n\n •	Space plants so that air flows between them."
                          "\n\n •	Remove or bury plants at the end of the season. Manage cull piles so culls break down over winter."
                          ,
                                          style: TextSizes.black12pxw500.copyWith(
                                              color: Colors.white
                                          ),
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),



                                      ],
                                    ),
                                  ),


                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*4,
                                  ),

                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("MORE INFORMATION",style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),

                                        Text("Visit the below link for further information",style: TextSizes.black12pxw500.copyWith(
                                            color: Colors.white
                                        ),
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*2,),

                                        GestureDetector(
                                          onTap: (){
                                            Navigator.push(context, PageTransition(child: WebviewScreen(
                                              name: "Tomato Late Blight",
                                              webviewUrl: "https://extension.umn.edu/disease-management/late-blight",
                                            ), type: PageTransitionType.rightToLeft));
                                          },
                                          behavior: HitTestBehavior.translucent,
                                          child: Container(
                                            height: 55,
                                            child: Text("https://extension.umn.edu/disease-management/late-blight"
                                              ,style: TextSizes.black12pxw500.copyWith(
                                                  color: Colors.white,
                                                  decoration: TextDecoration.underline
                                              ),
                                            ),
                                          ),
                                        )

                                      ],
                                    ),
                                  ),
                                ]

                            );
                          }
                          else if (widget.name.contains("Tomato Leaf Mold")){
                            return Column(
                                children:[
                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("INTRODUCTION",style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),

                                        Text("Tomato leaf mold is typically only an issue in greenhouse and high-tunnel tomatoes. The disease is driven by high relative humidity (greater than 85%). Foliage is often the only part of the plant directly infected. Infection will cause infected leaves to wither and die, indirectly affecting yield",
                                          style: TextSizes.black12pxw500.copyWith(
                                              color: Colors.white
                                          ),
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                      ],
                                    ),
                                  ),

                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*5,
                                  ),

                                  Row(
                                    children: [
                                      Expanded(child: Container(
                                        height: SizeConfig.safeBlockVertical*25,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset("assets/images/DiseaseInformation/Tomato Leaf Mold.png",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      )),

                                      SizedBox(width: SizeConfig.safeBlockHorizontal*5,),
                                      Expanded(child: Container(
                                        height: SizeConfig.safeBlockVertical*25,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset("assets/images/DiseaseInformation/Tomato Leaf Mold-1.png",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      )),
                                    ],
                                  ),



                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*4,
                                  ),

                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("SYMPTOMS",style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),

                                        Text("Leaf mold is rarely seen in field tomatoes, but is fairly common when the crop is grown under tunnels.  Pale green to yellowish spots develop on the upper leaf surface, starting with older leaves. An olive-green to gray mold develops on the underside of the leaves. These symptoms eventually cover most of the leaf.  Leaves wither, curl, and eventually drop. The pathogen also infects stems, blossoms, and fruit."
                                          ,style: TextSizes.black12pxw500.copyWith(
                                              color: Colors.white
                                          ),
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                      ],
                                    ),
                                  ),



                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*4,
                                  ),

                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("TOMATO LEAF MOLD TREATMENT & MANAGEMENT",
                                            style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),

                                        Text("•	Use drip irrigation and avoid watering foliage."
                          "\n\n •	Space plants to provide good air movement between rows and individual plants. Stake, string or prune to increase airflow in and around the plant."
                                        "\n\n •	Sterilize stakes, ties, trellises, etc. with 10% household bleach or commercial sanitizer."
                                        "\n\n •	Circulate air in greenhouses or tunnels with vents and fans and by rolling up high tunnel sides to reduce humidity around plants. Keep night temperatures in greenhouses higher than outside temperatures to avoid dew formation on the foliage."
                                        "\n\n •	Remove crop residue at the end of the season. Burn it or bury it away from tomato production areas. Clean the high tunnel or greenhouse walls and benches at the end of the season with a commercial sanitizer."
                                        "\n\n •	Using Fungicides."
                          ,
                                          style: TextSizes.black12pxw500.copyWith(
                                              color: Colors.white
                                          ),
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),



                                      ],
                                    ),
                                  ),



                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*4,
                                  ),

                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("MORE INFORMATION",style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),

                                        Text("Visit the below link for further information",style: TextSizes.black12pxw500.copyWith(
                                            color: Colors.white
                                        ),
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*2,),

                                        GestureDetector(
                                          onTap: (){
                                            Navigator.push(context, PageTransition(child: WebviewScreen(
                                              name: "Tomato Leaf Mold",
                                              webviewUrl: "https://extension.umn.edu/disease-management/tomato-leaf-mold",
                                            ), type: PageTransitionType.rightToLeft));
                                          },
                                          behavior: HitTestBehavior.translucent,
                                          child: Container(
                                            height: 55,
                                            child: Text("https://extension.umn.edu/disease-management/tomato-leaf-mold"
                                              ,style: TextSizes.black12pxw500.copyWith(
                                                  color: Colors.white,
                                                  decoration: TextDecoration.underline
                                              ),
                                            ),
                                          ),
                                        )

                                      ],
                                    ),
                                  ),

                                ]

                            );
                          }
                          else if (widget.name.contains("Tomato Septoria Leaf Spot")){
                            return Column(
                                children:[
                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("INTRODUCTION",style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),

                                        Text("Septoria leaf spot is a very common disease of tomatoes. It is caused by a fungus (Septoria lycopersici) and can affect tomatoes and other plants in the Solanaceae family, especially potatoes and eggplant, just about anywhere in the world. Although Septoria leaf spot is not necessarily fatal for your tomato plants, it spreads rapidly and can quickly defoliate and weaken the plants, rendering them unable to bear fruit to maturity. ",
                                          style: TextSizes.black12pxw500.copyWith(
                                              color: Colors.white
                                          ),
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                      ],
                                    ),
                                  ),

                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*5,
                                  ),

                                  Row(
                                    children: [
                                      Expanded(child: Container(
                                        height: SizeConfig.safeBlockVertical*25,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset("assets/images/DiseaseInformation/Tomato Septoria Leaf Spot.png",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      )),

                                      SizedBox(width: SizeConfig.safeBlockHorizontal*5,),
                                      Expanded(child: Container(
                                        height: SizeConfig.safeBlockVertical*25,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset("assets/images/DiseaseInformation/Tomato Septoria Leaf Spot-1.png",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      )),
                                    ],
                                  ),



                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*4,
                                  ),

                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("SYMPTOMS",style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),

                                        Text("Small, water-soaked, circular spots first occur on the underside of older leaves.  Lower leaves become peppered with small, dark, circular lesions which may eventually expand to 5- 6 mm (3/16- ¼ in.) in diameter.  Spots are generally grey or tan with a dark brown margin.  They may have a narrow yellow halo.  Within the lesions, small, black, pinhead sized fungal structures appear.  These structures (pycnidia) help to distinguish the lesions from early blight."
                                          "The disease spreads from the lower leaves and stems to the younger leaves.  The first signs of disease are often seen deep in the canopy where leaves stay wet.  Septoria leaf spot causes less yellowing of the foliage than early blight.  It can quickly defoliate the plant in severe cases.  Symptoms on the fruit are rare",
                                          style: TextSizes.black12pxw500.copyWith(
                                              color: Colors.white
                                          ),
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),



                                      ],
                                    ),
                                  ),



                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*4,
                                  ),

                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("TOMATO SEPTORIA LEAF SPOT  TREATMENT & MANAGEMENT",
                                            style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),
                                        Text("Eliminating initial sources of inoculum can greatly reduce the extent of disease."
                                        "\n\n •	Because seed has been implicated as a source, make sure seed is acquired from disease-free seed-producing areas."
                                        "\n\n •	Make sure greenhouse production areas are free of susceptible weeds and the previous season's tomato crop debris. Practice good sanitation. If infected plants are found, rogue the seedlings before transplanting them to the field."
                                        "\n\n •	In the field, remove or destroy tomato debris by deep plowing immediately after harvest. A 1-year rotation out of tomato should be sufficient if no other sources of inoculum are available. Make sure perennial weed hosts such as horse nettle is eliminated before planting."
                                        "\n\n •	Resistance to Septoria leaf spot has been identified in several plant introduction lines. Currently no commercial varieties are resistant."
                                        "\n\n •	Using Fungicides."
                                          ,
                                          style: TextSizes.black12pxw500.copyWith(
                                              color: Colors.white
                                          ),
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),



                                      ],
                                    ),
                                  ),



                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*4,
                                  ),

                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("MORE INFORMATION",style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),

                                        Text("Visit the below link for further information",style: TextSizes.black12pxw500.copyWith(
                                            color: Colors.white
                                        ),
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*2,),

                                        GestureDetector(
                                          onTap: (){
                                            Navigator.push(context, PageTransition(child: WebviewScreen(
                                              name: "Tomato Septoria Leaf Spot",
                                              webviewUrl: "https://www.thespruce.com/identifying-and-controlling-septoria-leaf-spot-of-tomato-1402974",
                                            ), type: PageTransitionType.rightToLeft));
                                          },
                                          behavior: HitTestBehavior.translucent,
                                          child: Container(
                                            height: 55,
                                            child: Text("https://www.thespruce.com/identifying-and-controlling-septoria-leaf-spot-of-tomato-1402974"
                                              ,style: TextSizes.black12pxw500.copyWith(
                                                  color: Colors.white,
                                                  decoration: TextDecoration.underline
                                              ),
                                            ),
                                          ),
                                        )

                                      ],
                                    ),
                                  ),

                                ]

                            );
                          }
                          else if (widget.name.contains("Tomato Spider Mite")){
                            return Column(
                                children:[
                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("INTRODUCTION",style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),

                                        Text("Two spotted spider mites are occasional pests that can cause serious damage during hot dry weather. Extended periods of hot, dry weather favors mite buildups. Infestations usually first occur at the edge of a field, typically near rank weed growth or dirt roads.",
                                          style: TextSizes.black12pxw500.copyWith(
                                              color: Colors.white
                                          ),
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                      ],
                                    ),
                                  ),

                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*5,
                                  ),

                                  Row(
                                    children: [
                                      Expanded(child: Container(
                                        height: SizeConfig.safeBlockVertical*25,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset("assets/images/DiseaseInformation/Tomato Spider Mite.png",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      )),

                                      SizedBox(width: SizeConfig.safeBlockHorizontal*5,),
                                      Expanded(child: Container(
                                        height: SizeConfig.safeBlockVertical*25,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset("assets/images/DiseaseInformation/Tomato Spider Mite-1.png",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      )),
                                    ],
                                  ),



                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*4,
                                  ),

                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("SYMPTOMS",style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),

                                        Text("The two-spotted spider mite, Tetranychus urticae, is a type of arachnid, related to insects. Other arachnids include spiders and ticks.  All arachnids, including mites, have two main body parts and eight legs. They are very tiny, about 1/50th of an inch long. Yellow-orange in color, with two dark spots, one on each side of the body. When a heavy infestation occurs webbing will also be present.",
                                          style: TextSizes.black12pxw500.copyWith(
                                              color: Colors.white
                                          ),
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                      ],
                                    ),
                                  ),



                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*4,
                                  ),

                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("TOMATO SPIDER MITES  TREATMENT & MANAGEMENT",
                                            style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),
                                        Text("•	Check plants regularly for spider mites"
                                        "\n\n •	Keep plants healthy"
                                        "\n\n •	Physically remove them"
                                        "\n\n •	Natural enemies can reduce two-spotted spider mites"
                                        "\n\n •	Using pesticides",
                                          style: TextSizes.black12pxw500.copyWith(
                                              color: Colors.white
                                          ),
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),



                                      ],
                                    ),
                                  ),


                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*4,
                                  ),

                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("MORE INFORMATION",style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),

                                        Text("Visit the below link for further information",style: TextSizes.black12pxw500.copyWith(
                                            color: Colors.white
                                        ),
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*2,),

                                        GestureDetector(
                                          onTap: (){
                                            Navigator.push(context, PageTransition(child: WebviewScreen(
                                              name: "Tomato Spider Mite",
                                              webviewUrl: "https://extension.umn.edu/yard-and-garden-insects/spider-mites",
                                            ), type: PageTransitionType.rightToLeft));
                                          },
                                          behavior: HitTestBehavior.translucent,
                                          child: Container(
                                            height: 55,
                                            child: Text("https://extension.umn.edu/yard-and-garden-insects/spider-mites"
                                              ,style: TextSizes.black12pxw500.copyWith(
                                                  color: Colors.white,
                                                  decoration: TextDecoration.underline
                                              ),
                                            ),
                                          ),
                                        )

                                      ],
                                    ),
                                  ),
                                ]

                            );
                          }
                          else if (widget.name.contains("Tomato Target Spot")){
                            return Column(
                                children:[
                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("INTRODUCTION",style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),

                                        Text("Target spot is often a problem on tomatoes in Florida. The disease is caused by the fungus Corynespora cassiicola. Target spot is frequently misdiagnosed as in its early stages as symptoms are difficult to recognize and can be confused with bacterial spot and early blight",
                                          style: TextSizes.black12pxw500.copyWith(
                                              color: Colors.white
                                          ),
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                      ],
                                    ),
                                  ),

                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*5,
                                  ),

                                  Row(
                                    children: [
                                      Expanded(child: Container(
                                        height: SizeConfig.safeBlockVertical*25,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset("assets/images/DiseaseInformation/Tomato Target Spot.png",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      )),

                                      SizedBox(width: SizeConfig.safeBlockHorizontal*5,),
                                      Expanded(child: Container(
                                        height: SizeConfig.safeBlockVertical*25,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset("assets/images/DiseaseInformation/Tomato Target Spot-1.png",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      )),
                                    ],
                                  ),



                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*4,
                                  ),

                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("SYMPTOMS",style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),

                                        Text("Target spot on tomato fruit is difficult to recognize in the early stages, as the disease resembles several other fungal diseases of tomatoes. However, as diseased tomatoes ripen and turn from green to red, the fruit displays circular spots with concentric, target-like rings and a velvety black, fungal lesion in the center. The “targets” become pitted and larger as the tomato matures",
                                          style: TextSizes.black12pxw500.copyWith(
                                              color: Colors.white
                                          ),
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                      ],
                                    ),
                                  ),



                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*4,
                                  ),

                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("TOMATO TARGET SPOT  TREATMENT & MANAGEMENT",
                                            style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),
                                        Text("•	Remove old plant debris at the end of the growing season"
                          "\n\n •	Remove a few branches from the lower part of the plants to allow better airflow at the base"
                          "\n\n •	Remove and burn the lower leaves as soon as the disease is seen, especially after the lower fruit trusses have been picked."
                          "\n\n •	Keep plots free from weeds, as some may be hosts of the fungus."
                          "\n\n •	Do not use overhead irrigation; otherwise, it will create conditions for spore production and infection."
                                          , style: TextSizes.black12pxw500.copyWith(
                                              color: Colors.white
                                          ),
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),



                                      ],
                                    ),
                                  ),




                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*4,
                                  ),

                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("MORE INFORMATION",style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),

                                        Text("Visit the below link for further information",style: TextSizes.black12pxw500.copyWith(
                                            color: Colors.white
                                        ),
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*2,),

                                        GestureDetector(
                                          onTap: (){
                                            Navigator.push(context, PageTransition(child: WebviewScreen(
                                              name: "Tomato Target Spot",
                                              webviewUrl: "https://apps.lucidcentral.org/pppw_v10/text/web_full/entities/tomato_target_spot_163.htm",
                                            ), type: PageTransitionType.rightToLeft));
                                          },
                                          behavior: HitTestBehavior.translucent,
                                          child: Container(
                                            height: 55,
                                            child: Text("https://apps.lucidcentral.org/pppw_v10/text/web_full/entities/tomato_target_spot_163.htm"
                                              ,style: TextSizes.black12pxw500.copyWith(
                                                  color: Colors.white,
                                                  decoration: TextDecoration.underline
                                              ),
                                            ),
                                          ),
                                        )

                                      ],
                                    ),
                                  ),

                                ]

                            );
                          }
                          else if (widget.name.contains("Tomato Yellow Leaf")){
                            return Column(
                                children:[
                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("INTRODUCTION",style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),

                                        Text("Tomato yellow leaf curl is a disease of tomato caused by Tomato yellow leaf curl virus. In March 2007, it was identified for the first time in California and currently has a limited distribution.",
                                        style: TextSizes.black12pxw500.copyWith(
                                              color: Colors.white
                                          ),
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                      ],
                                    ),
                                  ),

                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*5,
                                  ),

                                  Row(
                                    children: [
                                      Expanded(child: Container(
                                        height: SizeConfig.safeBlockVertical*25,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset("assets/images/DiseaseInformation/Tomato Yellow Leaf Curl Virus.png",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      )),

                                      SizedBox(width: SizeConfig.safeBlockHorizontal*5,),
                                      Expanded(child: Container(
                                        height: SizeConfig.safeBlockVertical*25,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset("assets/images/DiseaseInformation/Tomato Yellow Leaf Curl Virus-2.png",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      )),
                                    ],
                                  ),



                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*4,
                                  ),

                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("SYMPTOMS",style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),

                                        Text("Infected tomato plants initially show stunted and erect or upright plant growth; plants infected at an early stage of growth will show severe stunting. However, the most diagnostic symptoms are those in leaves.Leaves of infected plants are small and curl upward; and show strong crumpling and interveinal and marginal yellowing. The internodes of infected plants become shortened and, together with the stunted growth",style: TextSizes.black12pxw500.copyWith(
                                              color: Colors.white
                                          ),
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                      ],
                                    ),
                                  ),



                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*4,
                                  ),

                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("TOMATO YELLOW LEAF SPOT  TREATMENT & MANAGEMENT",
                                            style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),
                                        Text(" •	Plant immediately after any tomato-free period or true winter season. Avoid planting new fields near older fields (especially those with TYLCV-infected plants)."
                                        "\n\n •	Manage WHITEFLIES."
                                        "\n\n •	Cover plants with floating row covers of fine mesh (Agryl or Agribon) to protect from whitefly infestations."
                          "\n\n •	Rogue diseased plants when incidence of virus infection is low."
                          "\n\n •	Practice good weed management in and around fields to the extent feasible."
                          "\n\n •	Remove and destroy old crop residue and volunteers on a regional basis."
                          , style: TextSizes.black12pxw500.copyWith(
                                              color: Colors.white
                                          ),
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),



                                      ],
                                    ),
                                  ),



                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*4,
                                  ),

                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("MORE INFORMATION",style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),

                                        Text("Visit the below link for further information",style: TextSizes.black12pxw500.copyWith(
                                            color: Colors.white
                                        ),
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*2,),

                                        GestureDetector(
                                          onTap: (){
                                            Navigator.push(context, PageTransition(child: WebviewScreen(
                                              name: "Tomato Yellow Leaf",
                                              webviewUrl: "https://www2.ipm.ucanr.edu/agriculture/tomato/tomato-yellow-leaf-curl/",
                                            ), type: PageTransitionType.rightToLeft));
                                          },
                                          behavior: HitTestBehavior.translucent,
                                          child: Container(
                                            height: 55,
                                            child: Text("https://www2.ipm.ucanr.edu/agriculture/tomato/tomato-yellow-leaf-curl/"
                                              ,style: TextSizes.black12pxw500.copyWith(
                                                  color: Colors.white,
                                                  decoration: TextDecoration.underline
                                              ),
                                            ),
                                          ),
                                        )

                                      ],
                                    ),
                                  ),
                                ]

                            );
                          }
                          else if (widget.name.contains("Tomato Mosaic Virus")){
                            return Column(
                                children:[
                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("INTRODUCTION",style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),

                                        Text("Tomato mosaic virus is a serious and extremely contagious disease. It is also hard to identify, with symptoms varying wildly depending upon the variety and age of the infected plant, the strain of the virus, and environmental conditions.",
                                          style: TextSizes.black12pxw500.copyWith(
                                              color: Colors.white
                                          ),
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                      ],
                                    ),
                                  ),

                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*5,
                                  ),

                                  Row(
                                    children: [
                                      Expanded(child: Container(
                                        height: SizeConfig.safeBlockVertical*25,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset("assets/images/DiseaseInformation/Tomato Mosaic Virus.png",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      )),

                                      SizedBox(width: SizeConfig.safeBlockHorizontal*5,),
                                      Expanded(child: Container(
                                        height: SizeConfig.safeBlockVertical*25,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset("assets/images/DiseaseInformation/Tomato Mosaic Virus-1.png",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      )),
                                    ],
                                  ),



                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*4,
                                  ),

                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("SYMPTOMS",style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),

                                        Text("Tomato mosaic virus symptoms can be found at any stage of growth and all parts of the plant may be infected. They are often seen as a general mottling or mosaic appearance on foliage. When the plant is severely affected, leaves may look akin to ferns with raised dark green regions. Leaves may also become stunted.",
                                          style: TextSizes.black12pxw500.copyWith(
                                              color: Colors.white
                                          ),
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                      ],
                                    ),
                                  ),



                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*4,
                                  ),

                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("TOMATO MOSAIC VIRUS   TREATMENT & MANAGEMENT",
                                            style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),
                                        Text(" •	Plant immediately after any tomato-free period or true winter season. Avoid planting new fields near older fields (especially those with TYLCV-infected plants)."
                                        "\n\n •	Manage WHITEFLIES."
                                        "\n\n •	Cover plants with floating row covers of fine mesh (Agryl or Agribon) to protect from whitefly infestations."
                          "\n\n •	Rogue diseased plants when incidence of virus infection is low."
                          "\n\n •	Practice good weed management in and around fields to the extent feasible."
                          "\n\n •	Remove and destroy old crop residue and volunteers on a regional basis."
                          , style: TextSizes.black12pxw500.copyWith(
                                              color: Colors.white
                                          ),
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),



                                      ],
                                    ),
                                  ),




                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical*4,
                                  ),

                                  Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Text("MORE INFORMATION",style: TextSizes.black14pxw600.copyWith(
                                              color: Colors.white
                                          ),),
                                        ),
                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),


                                        Container(
                                          width: SizeConfig.screenWidth,
                                          color: primaryScreenBg,
                                          height: 1,
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*3,),

                                        Text("Visit the below link for further information",style: TextSizes.black12pxw500.copyWith(
                                            color: Colors.white
                                        ),
                                        ),

                                        SizedBox(height: SizeConfig.safeBlockVertical*2,),

                                        GestureDetector(
                                          onTap: (){
                                            Navigator.push(context, PageTransition(child: WebviewScreen(
                                              name: "Tomato Mosaic Virus",
                                              webviewUrl: "https://extension.umn.edu/disease-management/tomato-viruses",
                                            ), type: PageTransitionType.rightToLeft));
                                          },
                                          behavior: HitTestBehavior.translucent,
                                          child: Container(
                                            height: 55,
                                            child: Text("https://extension.umn.edu/disease-management/tomato-viruses"
                                              ,style: TextSizes.black12pxw500.copyWith(
                                                  color: Colors.white,
                                                  decoration: TextDecoration.underline
                                              ),
                                            ),
                                          ),
                                        )

                                      ],
                                    ),
                                  ),

                                   ]

                            );
                          }
                          else{
                            print("else run");
                            return Container();
                          }
                        }())
                      ),


                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
