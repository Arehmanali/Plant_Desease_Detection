import 'dart:io';

import 'package:agri_cure/Helpers/SizeConfig.dart';
import 'package:agri_cure/Helpers/TextSizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewScreen extends StatefulWidget {
  String? webviewUrl;
  String? name;

  WebviewScreen({this.webviewUrl,this.name});


  @override
  _WebviewScreenState createState() => _WebviewScreenState();
}

class _WebviewScreenState extends State<WebviewScreen> {

  bool isLoading=true;
  final _key = UniqueKey();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockVertical*1),
          child: Column(
            children: [
                Row(
                  children: [
                    IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon: Icon(Icons.arrow_back_ios,color: Colors.black,)),

                    SizedBox(width: SizeConfig.safeBlockHorizontal*3,),
                    Text(widget.name!,style: TextSizes.black18pxw700,),
                  ],
                ),

              SizedBox(height: SizeConfig.safeBlockVertical*1,),


              Expanded(
                child: Stack(
                  children: <Widget>[
                    WebView(
                      key: _key,
                      initialUrl: widget.webviewUrl!,
                      javascriptMode: JavascriptMode.unrestricted,
                      onPageFinished: (finish) {
                        setState(() {
                          isLoading = false;
                        });
                      },
                    ),
                    isLoading ? Center( child: CircularProgressIndicator(),)
                        : Stack(),
                  ],
          ),
        ),
      ]
    ))));
  }
}
