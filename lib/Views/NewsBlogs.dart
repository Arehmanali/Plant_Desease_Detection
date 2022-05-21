import 'package:agri_cure/Helpers/SizeConfig.dart';
import 'package:agri_cure/Helpers/TextSizes.dart';
import 'package:agri_cure/Theme/theme.dart';
import 'package:agri_cure/Views/BlogDetails.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
class NewsBlogs extends StatefulWidget {
  const NewsBlogs({Key? key}) : super(key: key);

  @override
  _NewsBlogsState createState() => _NewsBlogsState();
}

class _NewsBlogsState extends State<NewsBlogs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryScreenBg,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal*3,
        vertical: SizeConfig.safeBlockVertical*2
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [

              SizedBox(height: SizeConfig.safeBlockVertical*3,),
              Text("News and blogs", style: TextSizes.primaryColor14pxw500,),


              SizedBox(height: SizeConfig.safeBlockVertical*3,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, PageTransition(child: BlogDetails(title: "Apples",), type:
                  PageTransitionType.rightToLeft));
                },
                behavior: HitTestBehavior.translucent,
                child: Container(
                  width: SizeConfig.screenWidth,
                  height: SizeConfig.safeBlockVertical*13,
                  child: Card(
                    color: primaryScreenBg,
                    elevation: 7,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal*2,
                      vertical: SizeConfig.safeBlockVertical*1
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: SizeConfig.safeBlockVertical*7,
                            width: SizeConfig.safeBlockVertical*7,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset("assets/images/Apple_0.jpg",fit: BoxFit.cover,),
                            ),
                          ),

                          SizedBox(
                            width: SizeConfig.safeBlockHorizontal*3,
                          ),

                          Text("Apple planting and growth", style: TextSizes.primaryColor16pxw700,),

                          SizedBox(width: SizeConfig.safeBlockHorizontal*2,),

                          Expanded(
                            child: Align(
                              alignment: Alignment.centerRight,
                               child: Icon(Icons.chevron_right,size: 30,color: primaryColor,),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, PageTransition(child: BlogDetails(title: "Tomatos",), type:
                  PageTransitionType.rightToLeft));
                },
                behavior: HitTestBehavior.translucent,
                child: Container(
                  width: SizeConfig.screenWidth,
                  height: SizeConfig.safeBlockVertical*13,
                  child: Card(
                    color: primaryScreenBg,
                    elevation: 7,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal*2,
                      vertical: SizeConfig.safeBlockVertical*1
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: SizeConfig.safeBlockVertical*7,
                            width: SizeConfig.safeBlockVertical*7,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset("assets/images/Tomato_0.jpeg",fit: BoxFit.cover,),
                            ),
                          ),

                          SizedBox(
                            width: SizeConfig.safeBlockHorizontal*3,
                          ),

                          Expanded(
                              flex: 3,
                              child: Text("Growing and harvesting tomatos", style: TextSizes.primaryColor16pxw700,)),

                          SizedBox(width: SizeConfig.safeBlockHorizontal*2,),

                          Expanded(
                            flex: 1,
                            child: Align(
                              alignment: Alignment.centerRight,
                               child: Icon(Icons.chevron_right,size: 30,color: primaryColor,),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, PageTransition(child: BlogDetails(title: "Lemons",), type:
              PageTransitionType.rightToLeft));
            },
            behavior: HitTestBehavior.translucent,
            child: Container(
                width: SizeConfig.screenWidth,
                height: SizeConfig.safeBlockVertical*13,
                child: Card(
                  color: primaryScreenBg,
                  elevation: 7,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal*2,
                    vertical: SizeConfig.safeBlockVertical*1
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: SizeConfig.safeBlockVertical*7,
                          width: SizeConfig.safeBlockVertical*7,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/lemons_0.jpg",fit: BoxFit.cover,),
                          ),
                        ),

                        SizedBox(
                          width: SizeConfig.safeBlockHorizontal*3,
                        ),

                        Text("Lemons planting and growth", style: TextSizes.primaryColor16pxw700,),

                        SizedBox(width: SizeConfig.safeBlockHorizontal*2,),

                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                             child: Icon(Icons.chevron_right,size: 30,color: primaryColor,),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )),
          GestureDetector(
            onTap: (){
              Navigator.push(context, PageTransition(child: BlogDetails(title: "Lychee",), type:
              PageTransitionType.rightToLeft));
            },
            behavior: HitTestBehavior.translucent,
            child: Container(
                width: SizeConfig.screenWidth,
                height: SizeConfig.safeBlockVertical*13,
                child: Card(
                  color: primaryScreenBg,
                  elevation: 7,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal*2,
                    vertical: SizeConfig.safeBlockVertical*1
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: SizeConfig.safeBlockVertical*7,
                          width: SizeConfig.safeBlockVertical*7,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/lychee-0.jpeg",fit: BoxFit.cover,),
                          ),
                        ),

                        SizedBox(
                          width: SizeConfig.safeBlockHorizontal*3,
                        ),

                        Text("Lychee planting and growth", style: TextSizes.primaryColor16pxw700,),

                        SizedBox(width: SizeConfig.safeBlockHorizontal*2,),

                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                             child: Icon(Icons.chevron_right,size: 30,color: primaryColor,),
                          ),
                        ),


                      ],
                    ),
                  ),
                ),
              )),
          GestureDetector(
            onTap: (){
              Navigator.push(context, PageTransition(child: BlogDetails(title: "Bananas",), type:
              PageTransitionType.rightToLeft));
            },
            behavior: HitTestBehavior.translucent,
            child: Container(
                width: SizeConfig.screenWidth,
                height: SizeConfig.safeBlockVertical*13,
                child: Card(
                  color: primaryScreenBg,
                  elevation: 7,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal*2,
                    vertical: SizeConfig.safeBlockVertical*1
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: SizeConfig.safeBlockVertical*7,
                          width: SizeConfig.safeBlockVertical*7,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/Bananas-1.jpg",fit: BoxFit.cover,),
                          ),
                        ),

                        SizedBox(
                          width: SizeConfig.safeBlockHorizontal*3,
                        ),

                        Expanded(
                            flex: 3,
                            child: Text("Bananas planting and growth", style: TextSizes.primaryColor16pxw700,)),

                        SizedBox(width: SizeConfig.safeBlockHorizontal*2,),

                        Expanded(
                          flex: 1,
                          child: Align(
                            alignment: Alignment.centerRight,
                             child: Icon(Icons.chevron_right,size: 30,color: primaryColor,),
                          ),
                        ),


                      ],
                    ),
                  ),
                ),
              )),
          GestureDetector(
            onTap: (){
              Navigator.push(context, PageTransition(child: BlogDetails(title: "Seedlings",), type:
              PageTransitionType.rightToLeft));
            },
            behavior: HitTestBehavior.translucent,
            child: Container(
                width: SizeConfig.screenWidth,
                height: SizeConfig.safeBlockVertical*13,
                child: Card(
                  color: primaryScreenBg,
                  elevation: 7,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal*2,
                    vertical: SizeConfig.safeBlockVertical*1
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: SizeConfig.safeBlockVertical*7,
                          width: SizeConfig.safeBlockVertical*7,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/seedlings-0.webp",fit: BoxFit.cover,),
                          ),
                        ),

                        SizedBox(
                          width: SizeConfig.safeBlockHorizontal*3,
                        ),

                        Expanded(
                            flex: 3,
                            child: Text("Tips for Transplanting Seedlings", style: TextSizes.primaryColor16pxw700,)),

                        SizedBox(width: SizeConfig.safeBlockHorizontal*2,),

                        Expanded(
                          flex: 1,
                          child: Align(
                            alignment: Alignment.centerRight,
                             child: Icon(Icons.chevron_right,size: 30,color: primaryColor,),
                          ),
                        ),


                      ],
                    ),
                  ),
                ),
              )),
          GestureDetector(
            onTap: (){
              Navigator.push(context, PageTransition(child: BlogDetails(title: "Vegetables",), type:
              PageTransitionType.rightToLeft));
            },
            behavior: HitTestBehavior.translucent,
            child: Container(
                width: SizeConfig.screenWidth,
                height: SizeConfig.safeBlockVertical*13,
                child: Card(
                  color: primaryScreenBg,
                  elevation: 7,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal*2,
                    vertical: SizeConfig.safeBlockVertical*1
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: SizeConfig.safeBlockVertical*7,
                          width: SizeConfig.safeBlockVertical*7,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/vegetables.jpg",fit: BoxFit.cover,),
                          ),
                        ),

                        SizedBox(
                          width: SizeConfig.safeBlockHorizontal*3,
                        ),

                        Expanded(
                            flex: 3,
                            child: Text("Easiest Vegetables to Grow at Home", style: TextSizes.primaryColor16pxw700,)),

                        SizedBox(width: SizeConfig.safeBlockHorizontal*2,),

                        Expanded(
                          flex: 1,
                          child: Align(
                            alignment: Alignment.centerRight,
                             child: Icon(Icons.chevron_right,size: 30,color: primaryColor,),
                          ),
                        ),


                      ],
                    ),
                  ),
                ),
              )),
          GestureDetector(
            onTap: (){
              Navigator.push(context, PageTransition(child: BlogDetails(title: "Water Plants for Healthy Growth",), type:
              PageTransitionType.rightToLeft));
            },
            behavior: HitTestBehavior.translucent,
            child: Container(
                width: SizeConfig.screenWidth,
                height: SizeConfig.safeBlockVertical*13,
                child: Card(
                  color: primaryScreenBg,
                  elevation: 7,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal*2,
                    vertical: SizeConfig.safeBlockVertical*1
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: SizeConfig.safeBlockVertical*7,
                          width: SizeConfig.safeBlockVertical*7,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/water-plants.jpeg",fit: BoxFit.cover,),
                          ),
                        ),

                        SizedBox(
                          width: SizeConfig.safeBlockHorizontal*3,
                        ),

                        Expanded(
                            flex: 3,
                            child: Text("How to Water Plants for Healthy Growth?", style: TextSizes.primaryColor16pxw700,)),

                        SizedBox(width: SizeConfig.safeBlockHorizontal*2,),

                        Expanded(
                          flex: 1,
                          child: Align(
                            alignment: Alignment.centerRight,
                             child: Icon(Icons.chevron_right,size: 30,color: primaryColor,),
                          ),
                        ),


                      ],
                    ),
                  ),
                ),
              )),
          GestureDetector(
            onTap: (){
              Navigator.push(context, PageTransition(child: BlogDetails(title: "Five Golden Rules of Garden Planning",), type:
              PageTransitionType.rightToLeft));
            },
            behavior: HitTestBehavior.translucent,
            child: Container(
                width: SizeConfig.screenWidth,
                height: SizeConfig.safeBlockVertical*13,
                child: Card(
                  color: primaryScreenBg,
                  elevation: 7,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal*2,
                    vertical: SizeConfig.safeBlockVertical*1
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: SizeConfig.safeBlockVertical*7,
                          width: SizeConfig.safeBlockVertical*7,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/Keys for planting.jpg",fit: BoxFit.cover,),
                          ),
                        ),

                        SizedBox(
                          width: SizeConfig.safeBlockHorizontal*3,
                        ),

                        Expanded(
                            flex: 3,
                            child: Text("Five Golden Rules of Garden Planning", style: TextSizes.primaryColor16pxw700,)),

                        SizedBox(width: SizeConfig.safeBlockHorizontal*2,),

                        Expanded(
                          flex: 1,
                          child: Align(
                            alignment: Alignment.centerRight,
                             child: Icon(Icons.chevron_right,size: 30,color: primaryColor,),
                          ),
                        ),


                      ],
                    ),
                  ),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
