import 'package:flutter/material.dart';

import 'drawer.dart';
// ignore: camel_case_types
class Interview_Page extends StatefulWidget {
  

  @override
  _Interview_PageState createState() => _Interview_PageState();
}

// ignore: camel_case_types
class _Interview_PageState extends State<Interview_Page> {
// ignore: non_constant_identifier_names
final List<String> list_of_interviews = [
 
   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS19xm0Rcm2STTCA8Nabm30lkWYWrYYCcBoOw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWqaNUkxQwARKGKwYzp_dwi7UQWAtrjp6Bkw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOhSkdoj1RaMpwts1ZU3HAGQWps2IQt9jM3w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTA4lIOF9Io_CVG_tjfaYIkPQ4TOgOanuBYJA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgqWW4gh0qOWRkvQNwkkvivFFAFwuJ_n0Uag&usqp=CAU"
 
  ];
  // ignore: non_constant_identifier_names
  final List<String>title_of_interview=[
    "MIFF-2021",
    "MMM",
    'M 2020',
    'MVT 2021',
    'MVT'
  ];

  

  @override
  Widget build(BuildContext context) {
     return Scaffold(
    //  appBar: AppBar(
    //     title: Text(
    //       'MVT',
    //       style: TextStyle(color: Colors.orange),
    //     ),
    //     centerTitle: true,
    //     //leading: Icon(Icons.dehaze_sharp,color: Colors.black,),
    //     actions: [Icon(Icons.search, color: Colors.black)],
    //     backgroundColor: Colors.white,
    //     iconTheme: IconThemeData(color: Colors.black),
    //   ),
    //   drawer: MainDrawer(),
      body: CustomScrollView(
        slivers: [ SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 1.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.all(6),
                  child: 
                  Column(children: [
                  Container(
                                        decoration: BoxDecoration(
                                         borderRadius: const BorderRadius.all(
                                const Radius.circular(20))),

                    child: Stack(
                      alignment: Alignment.center,
                      children: [Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                        height: 110,
                        child: Ink.image(image:NetworkImage( list_of_interviews[index % list_of_interviews.length],),
                      
                      
                      fit: BoxFit.cover,
                      child: InkWell(onTap: (){},),
                      ), 
                      ),
                     
                      Icon(Icons.play_arrow,color: Colors.white,size: 40.0,),
                        
                    ],)
                    

                  ),
                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: new Text(
                                      title_of_interview[index % title_of_interview.length],
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black),
                                    )),
                  ],
                  ),
                  
                  
                );
                
               
              },
              childCount:list_of_interviews.length,
              
            ),
          
          ),
        ],
      ),
      
    );
  }
}

