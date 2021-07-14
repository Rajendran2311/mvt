import 'package:flutter/material.dart';

import 'drawer.dart';
// ignore: camel_case_types
class Podcast_Page extends StatefulWidget {
  const Podcast_Page({ Key? key }) : super(key: key);

  @override
  _Podcast_PageState createState() => _Podcast_PageState();
}

// ignore: camel_case_types
class _Podcast_PageState extends State<Podcast_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar: AppBar(
      //   title: Text(
      //     'MVT',
      //     style: TextStyle(color: Colors.orange),
      //   ),
      //   centerTitle: true,
      //   //leading: Icon(Icons.dehaze_sharp,color: Colors.black,),
      //   actions: [Icon(Icons.search, color: Colors.black)],
      //   backgroundColor: Colors.white,
      //   iconTheme: IconThemeData(color: Colors.black),
      // ),
      // drawer: MainDrawer(),
    
      body: Center(child: Text('No data available'),),
      
    );
  }
}