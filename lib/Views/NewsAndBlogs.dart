import 'package:agri_cure/Controllers/NewsProvider.dart';
import 'package:agri_cure/Helpers/SizeConfig.dart';
import 'package:agri_cure/Helpers/TextSizes.dart';
import 'package:agri_cure/Models/NewsModel.dart';
import 'package:agri_cure/Theme/theme.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class NewsAndBlogs extends StatefulWidget {
  const NewsAndBlogs({Key? key}) : super(key: key);

  @override
  _NewsAndBlogsState createState() => _NewsAndBlogsState();
}

class _NewsAndBlogsState extends State<NewsAndBlogs> {

  @override
  void initState() {
    // TODO: implement initState
    getData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryScreenBg,
      body: Consumer<NewsProvider>(
        builder: (ctx,newsProvider,ch){
          return newsProvider.newsArticlesList == null || newsProvider.newsArticlesList.isEmpty
          ?Center(child: CircularProgressIndicator(),):Container(
            child: Column(
              children: [
                SizedBox(height: 15,),
                Text("News and blogs", style: TextSizes.primaryColor16pxw700,),
                SizedBox(height: 15,),
                Expanded(
                  child: ListView.builder(
                    itemCount: newsProvider.newsArticlesList.length,
                    itemBuilder:(ctx,index)=>
                        _buildNewsRow(newsProvider.newsArticlesList[index]),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }


  Widget _buildNewsRow(Articles articles){
    return Container(
      color: primaryScreenBg,
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal*3),
      margin: EdgeInsets.symmetric(vertical: SizeConfig.safeBlockHorizontal*1),
      child: Card(
        elevation: 10,
        color: primaryScreenBg,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal*3,
          vertical: SizeConfig.safeBlockVertical*2
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Expanded(
                 flex: 1,
                 child: Container(
                   height: 110,
                   width: 110,
                   child: ClipRRect(
                     borderRadius: BorderRadius.circular(10),
                     child: CachedNetworkImage(
                       imageUrl: articles.urlToImage,
                       fit: BoxFit.fill,
                       placeholder: (context, url)
                       =>Container(
                       height: 110,
                       width: 110,
                       decoration:
                       BoxDecoration(
                           color: Colors.black,
                           shape: BoxShape.rectangle, borderRadius: BorderRadius.circular(10)),
                       child: SvgPicture.asset(
                         "assets/images/ic_image_placeholder.svg",
                         fit: BoxFit.contain,
                       ),
                     ),
                       errorWidget: (context, url, error) => Container(
                         height: 110,
                         width: 110,
                         decoration:
                         BoxDecoration(
                             color: Colors.black,
                             shape: BoxShape.rectangle, borderRadius: BorderRadius.circular(10)),
                         child: SvgPicture.asset(
                           "assets/images/ic_image_placeholder.svg",
                           fit: BoxFit.contain,
                         ),
                       ),
                     ),
                   ),
                 ),
               ),
              SizedBox(width: 12,),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(articles.title,style: TextSizes.black14pxw600,),

                    SizedBox(height: 10,),

                    Text(articles.description,style: TextSizes.black12pxw500,),

                    SizedBox(height: 7,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(articles.publishedAt,style: TextSizes.black12pxw500,),
                      ],
                    )

                  ],
                )
              )
            ],
          ),
        ),
      ),

    );
  }

  void getData() {
    final newsProvider = Provider.of<NewsProvider>(context,listen: false);
    newsProvider.getNewsFromApi();
  }
}
