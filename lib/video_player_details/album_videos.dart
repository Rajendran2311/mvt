import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class AlbumVideos extends StatefulWidget {
  const AlbumVideos({Key? key,required vidUrl}) : super(key: key);

  @override
  _AlbumVideosState createState() => _AlbumVideosState();
}

class _AlbumVideosState extends State<AlbumVideos> {
  late String vidUrl= 'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
      ),
      body:
      Container(child:
      Column(children: [ 
       AspectRatio(
        aspectRatio: 16 / 9,
        child: BetterPlayer.network(
          vidUrl,
          betterPlayerConfiguration:
              BetterPlayerConfiguration(aspectRatio: 16 / 9, autoPlay: false),
        ),
      ),
      SizedBox(height: 20,),
      Text('RAJAN'),
      ],),
      ),
    );
  }
}
