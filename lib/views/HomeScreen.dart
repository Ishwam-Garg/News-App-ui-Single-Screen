import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:internsample_project/AppComponents/Components.dart';
import 'package:internsample_project/AppComponents/Strings.dart';
import 'package:internsample_project/AppComponents/Values.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){
        SystemNavigator.pop();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(Strings.NewsName,style: TextStyle(color: Colors.black),),
          centerTitle: true,
          leading: Components().MenuButton(),
          actions: [
            Components().SearchButton(),
          ],
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          margin: EdgeInsets.symmetric(horizontal: Values.smallPadding),
          child: SingleChildScrollView(
            physics: ScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //news tiles row
                Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: Values.smallPadding),
                  child: Center(
                    child: SingleChildScrollView(
                      physics: ScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: List.generate(5, (index) => Components().NewsTile("Assets/Images/"+Strings.categories[index],)),
                        ),
                    ),
                  ),
                ),
                //header news container
                Components().HeaderNews(Strings.header_news_title, Strings.header_news_description,Strings.newsImage, context),
                //Advertisement Block
                InkWell(
                  onTap: (){},
                  splashColor: Colors.yellow,
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height*0.4,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      image: DecorationImage(image: AssetImage('Assets/Images/advertisement.jpg'),fit: BoxFit.fill),
                    ),
                    child: Center(
                      child: Text('Advertisement',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                //MoreNews
                Components().MoreNewsTiles(Strings.MoreNewsTitles[0], Strings.header_news_description,Strings.images[0],context),
                Components().MoreNewsTiles(Strings.MoreNewsTitles[1], Strings.header_news_description,Strings.images[1],context),
                Components().MoreNewsTiles(Strings.MoreNewsTitles[2], Strings.header_news_description,Strings.images[2],context),
                Components().MoreNewsTiles(Strings.MoreNewsTitles[3], Strings.header_news_description,Strings.images[3],context),
                Components().MoreNewsTiles(Strings.MoreNewsTitles[4], Strings.header_news_description,Strings.images[4],context),
              ],
            ),
          ),
        ),
      ),
    );
  }



}
