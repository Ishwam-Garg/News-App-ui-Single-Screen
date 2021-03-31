import 'package:flutter/material.dart';
import 'package:internsample_project/AppComponents/Components.dart';
import 'package:internsample_project/AppComponents/Strings.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        margin: EdgeInsets.symmetric(horizontal: 10),
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
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Center(
                  child: SingleChildScrollView(
                    physics: ScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: List.generate(10, (index) => Components().NewsTile()),
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
                  color: Colors.red,
                  child: Center(
                    child: Text('Advertisemnt',style: TextStyle(color: Colors.white),),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              //MoreNews
              Components().MoreNewsTiles(Strings.header_news_title, Strings.header_news_description,Strings.images[0],context),
              Components().MoreNewsTiles(Strings.header_news_title, Strings.header_news_description,Strings.images[1],context),
              Components().MoreNewsTiles(Strings.header_news_title, Strings.header_news_description,Strings.images[2],context),
              Components().MoreNewsTiles(Strings.header_news_title, Strings.header_news_description,Strings.images[3],context),

            ],
          ),
        ),
      ),
    );
  }



}
