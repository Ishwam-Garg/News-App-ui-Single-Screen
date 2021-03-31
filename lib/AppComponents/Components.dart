import 'package:flutter/material.dart';
import 'package:internsample_project/AppComponents/Strings.dart';
import 'package:internsample_project/views/ArticleScreen.dart';
import 'package:internsample_project/AppComponents/Values.dart';

class Components{
  Widget MenuButton(){
    return GestureDetector(
      onTap: (){},
      child: Container(
        child: Icon(Icons.menu,color: Colors.black,),
      ),
    );
  }

  Widget SearchButton(){
    return GestureDetector(
      onTap: (){},
      child: Container(
        padding: EdgeInsets.only(right: 10),
        child: Icon(Icons.search,color: Colors.black,),
      ),
    );
  }

  Widget NewsTile(String Image){
    return InkWell(
      onTap: (){},
      splashColor: Color(0xff999999),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.orange,
          image: DecorationImage(image: AssetImage(Image),fit: BoxFit.fill),
        ),
        margin: EdgeInsets.symmetric(horizontal: 5),
        width: 80,
      ),
    );
  }

  Widget HeaderNews(String title,String description,String image,BuildContext context){
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ArticleScreen(title: title,description: description,image: image,)));
      },
      child: Container(
        height: MediaQuery.of(context).size.height*0.5,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.3,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.orange,
                image: DecorationImage(image: AssetImage("Assets/Images/"+image),fit: BoxFit.fill),
              ),
            ),
            //title news
            Expanded(
              child: Container(
                padding: EdgeInsets.only(bottom: 10),
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(title,
                            style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: Values.mediumFont),overflow: TextOverflow.clip,),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(description,
                            style: TextStyle(color: Color(0xff404040),fontWeight: FontWeight.w500,fontSize: Values.smallFont),overflow: TextOverflow.clip,),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        //bookmark
                        InkWell(
                          onTap: (){},
                          child: Icon(Icons.bookmark_border,color: Colors.black,),
                        ),
                        InkWell(
                          onTap: (){},
                          child: Icon(Icons.share,color: Colors.black,),
                        ),
                        //share
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget MoreNewsTiles(String title,String description,String image,BuildContext context){
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ArticleScreen(title: title,description: description,image: image,)));
      },
      child: Container(
        height: 100,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //news image
            Container(
              width: MediaQuery.of(context).size.width*0.4,
              decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(image: AssetImage("Assets/Images/"+image),fit: BoxFit.fill),
              ),
            ),
            SizedBox(width: 10,),
            Expanded(
              child: Container(
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(title,style: TextStyle(color: Colors.black,fontSize: Values.smallFont,fontWeight: FontWeight.bold),
                      overflow: TextOverflow.clip,)),
              ),
            ),
          ],
        ),
      ),
    );
  }


}