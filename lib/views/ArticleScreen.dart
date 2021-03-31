import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internsample_project/AppComponents/Strings.dart';
import 'package:internsample_project/AppComponents/Values.dart';
class ArticleScreen extends StatefulWidget {

  final String title,description;
  final String image;

  const ArticleScreen({Key key, this.title, this.description, this.image}) : super(key: key);

  @override
  _ArticleScreenState createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back,color: Colors.black,),
        ),
        centerTitle: true,
        title: Text('GLOBAL',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: Values.mediumFont),),
        actions: [
          InkWell(
            onTap: (){},
            child: Icon(Icons.bookmark_border,color: Colors.black,),
          ),
          InkWell(
            onTap: (){},
            child: Container(
                margin: EdgeInsets.only(right: Values.smallPadding),
                child: Icon(Icons.share,color: Colors.black,)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: Values.smallPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(widget.title,style: TextStyle(color: Colors.black,fontSize: Values.mediumFont,fontWeight: FontWeight.w500),overflow: TextOverflow.clip,)),
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.3,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("Assets/Images/"+widget.image),fit: BoxFit.fill),
              ),
            ),
            SizedBox(height: 10,),
            Text(widget.description == null ? Strings.header_news_description : widget.description,style: TextStyle(color: Colors.black,fontSize: Values.mediumFont),
              overflow: TextOverflow.clip,),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: Values.smallFont),
              color: Colors.lightBlueAccent,
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('NEXT ARTICLE',style: TextStyle(color: Colors.black,fontSize: Values.largeFont,fontWeight: FontWeight.w500),)),
            ),
          ],
        ),
      ),
    );
  }
}
