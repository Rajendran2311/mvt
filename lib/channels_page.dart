import 'dart:ui';
// ignore: unused_import
import 'channels_details/album_songs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'channels_details/short_stories.dart';
import 'channels_details/award_show.dart';
import 'drawer.dart';
import 'interview_page.dart';
import 'podcast_page.dart';

// ignore: camel_case_types
class Channels_Page extends StatefulWidget {
  const Channels_Page({Key? key}) : super(key: key);

  @override
  _Channels_PageState createState() => _Channels_PageState();
}

// ignore: camel_case_types
class _Channels_PageState extends State<Channels_Page> {
// ignore: non_constant_identifier_names
  final List<String> list_of_videos = [
    "ALBUM SONGS",
    "SHORT STORIES",
    "AWARD SHOW 2019",
    "INTERVIEWS",
    "PODCAST"
  ];
  // ignore: non_constant_identifier_names
  final List<String> network_images = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS19xm0Rcm2STTCA8Nabm30lkWYWrYYCcBoOw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWqaNUkxQwARKGKwYzp_dwi7UQWAtrjp6Bkw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOhSkdoj1RaMpwts1ZU3HAGQWps2IQt9jM3w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTA4lIOF9Io_CVG_tjfaYIkPQ4TOgOanuBYJA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgqWW4gh0qOWRkvQNwkkvivFFAFwuJ_n0Uag&usqp=CAU"
  ];

 int currentpage = 0;

  var index;
 Function currentSlide=(index){
   if(index==0){
     return
     Album_Songs_List(index);
   }
   if(index==1){
     return
      ShortStories_List(index);
   }
   if(index==2){
     return
      Award_Show(index);
   }
   if(index==3){
     return 
     Interview_Page();

   }
   if(index==4){
     return 
     Podcast_Page();

   }

 };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
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
      body: CustomScrollView(
        slivers: [
          SliverGrid(
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
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                                const Radius.circular(20))),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Ink.image(
                              image: NetworkImage(
                                network_images[index % network_images.length],
                              ),
                              fit: BoxFit.cover,
                              child: InkWell(
                                onTap: () {
                                //   setState(() {
                                //   print(index);
                                // });
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>currentSlide(index) ,
                                    
                                  ),
                                  );
                                },
                              ),
                            ),
                            Text(
                              list_of_videos[index % list_of_videos.length],
                              style: TextStyle(
                                  fontSize: 23,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )));
              },
              childCount: list_of_videos.length,
            ),
          ),
        ],
      ),
    );
  }
}
