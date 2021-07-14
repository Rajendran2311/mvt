import 'package:flutter/material.dart';
import 'package:mvt/video_player_details/album_videos.dart';

// ignore: camel_case_types
class Album_Songs_List extends StatefulWidget {
  const Album_Songs_List(index,  {Key? key}) : super(key: key);

  @override
  _Album_Songs_ListState createState() => _Album_Songs_ListState();
}

// ignore: camel_case_types
class _Album_Songs_ListState extends State<Album_Songs_List> {
// ignore: non_constant_identifier_names
  final List<String> list_of_AlbumSongs = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS19xm0Rcm2STTCA8Nabm30lkWYWrYYCcBoOw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWqaNUkxQwARKGKwYzp_dwi7UQWAtrjp6Bkw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOhSkdoj1RaMpwts1ZU3HAGQWps2IQt9jM3w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTA4lIOF9Io_CVG_tjfaYIkPQ4TOgOanuBYJA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgqWW4gh0qOWRkvQNwkkvivFFAFwuJ_n0Uag&usqp=CAU"
  ];
  // ignore: non_constant_identifier_names
  final List<String> title_of_AlbumSongs = [
    "MIFF-2021",
    "MMM",
    'M 2020',
    'MVT 2021',
    'MVT'
  ];

 late String vidUrl;

   Function currentVideo=(index){
     late String vidUrl;
   if(index==0){
     vidUrl='https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4';
     return
     AlbumVideos(vidUrl: vidUrl);
   }
  
 };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ALBUM',
          style: TextStyle(color: Colors.orange),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
      ),
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
                  child: Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                  const Radius.circular(20))),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30)),
                                height: 110,
                                child: Ink.image(
                                  image: NetworkImage(
                                    list_of_AlbumSongs[
                                        index % list_of_AlbumSongs.length],
                                  ),
                                  fit: BoxFit.cover,
                                  child: InkWell(
                                    onTap: () {
                                      // setState(() {
                                      //   print(index);
                                      //   // ignore: unused_local_variable
                                      //   vidUrl='https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4';
                                      //    print(vidUrl);
                                      // });
                                      Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => currentVideo(index),
                                  ));},
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.play_arrow,
                                color: Colors.white,
                                size: 40.0,
                              ),
                            ],
                          )),
                      Align(
                          alignment: Alignment.bottomLeft,
                          child: new Text(
                            title_of_AlbumSongs[
                                index % title_of_AlbumSongs.length],
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          )),
                    ],
                  ),
                );
              },
              childCount: list_of_AlbumSongs.length,
            ),
          ),
        ],
      ),
    );
  }
}
