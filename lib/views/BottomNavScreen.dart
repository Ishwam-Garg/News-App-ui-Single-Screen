import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {

  int _CurrentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          customBorder: CircleBorder(),
          onTap: (){},
          splashColor: Colors.red,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.menu,color: Colors.black,),
          ),
        ),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 10),
                child: InkWell(
                  customBorder: CircleBorder(),
                  onTap: (){},
                  splashColor: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.search,color: Colors.black,),
                  ),
                ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            _CurrentPage = index;
          });
        },
        currentIndex: _CurrentPage,
        items: [
          BottomNavigationBarItem(
              icon: Icons.,
          ),
        ],
      ),
    );
  }
}

