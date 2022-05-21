import 'dart:io';

import 'package:agri_cure/Helpers/SizeConfig.dart';
import 'package:agri_cure/Helpers/TextSizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WikiWebview extends StatefulWidget {
  String? keyWord;

  WikiWebview({this.keyWord});


  @override
  _WikiWebviewState createState() => _WikiWebviewState();
}

class _WikiWebviewState extends State<WikiWebview> {

  bool isLoading=true;
  final _key = UniqueKey();
  String? url;


  @override
  void initState() {
    // TODO: implement initState
    url= "https://en.wikipedia.org/wiki/${widget.keyWord}".replaceAll(" ", "_");
    print(url);
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
                    Text(widget.keyWord!,style: TextSizes.black18pxw700,),
                  ],
                ),

              SizedBox(height: SizeConfig.safeBlockVertical*1,),


              Expanded(
                child: Stack(
                  children: <Widget>[
                    WebView(
                      key: _key,
                      initialUrl: url,
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
