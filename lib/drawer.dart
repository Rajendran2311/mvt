import 'package:flutter/material.dart';
import 'package:mvt/home_page.dart';

import 'channels_page.dart';
import 'interview_page.dart';
import 'main_page.dart';
import 'podcast_page.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({ Key? key }) : super(key: key);

  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  int currentTab=0;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20.0),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIQND6lOovzDcBzCIYL-eKPi4n2bQLEWP46g&usqp=CAU',
                      ),
                      fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text("RAJAN",style:TextStyle(fontSize: 25,color: Colors.white),),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title:Text('HOME',style: TextStyle(fontSize: 18),),
            onTap: (){setState(() {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MainPage(),
                      )
                      );
                       currentTab = 0;
            });  },
          ),
          ListTile(
            leading: Icon(Icons.tv),
            title:Text('CHANNELS',style: TextStyle(fontSize: 18),),
            onTap: (){setState(() {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MainPage(),
                      )
                      );
                       currentTab = 1;
            });  },
          ),
          ListTile(
            leading: Icon(Icons.monochrome_photos_outlined),
            title:Text('Interview',style: TextStyle(fontSize: 18),),
            onTap: (){setState(() {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MainPage(),
                      )
                      );
                       currentTab = 2;
            });  },
          ),
          ListTile(
            leading: Icon(Icons.mic),
            title:Text('Poacast',style: TextStyle(fontSize: 18),),
            onTap: (){setState(() {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MainPage(),
                      )
                      );
                       currentTab = 3;
            });  },
          ),
          ListTile(
            leading: Icon(Icons.language),
            title:Text('Language',style: TextStyle(fontSize: 18),),
            onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Podcast_Page(),
                      )
                      );},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title:Text('setting',style: TextStyle(fontSize: 18),),
            onTap: (){},
          ),
        ],
      ),
      
    );
  }
}