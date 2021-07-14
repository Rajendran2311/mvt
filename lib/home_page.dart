import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'drawer.dart';
// ignore: camel_case_types
class Home_Page extends StatefulWidget {

 
  final String title = "Video Demo";
  @override
  _Home_PageState createState() => _Home_PageState();
}

// ignore: camel_case_types
class _Home_PageState extends State<Home_Page> {
   late VideoPlayerController _controller;
  // ignore: unused_field
  late Future<void> _initializeVideoPlayerFuture;
 
  @override
  void initState() {
    _controller = VideoPlayerController.network(
        "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
        
        );
    //_controller = VideoPlayerController.asset("videos/sample_video.mp4");
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);
    super.initState();
  }
 
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
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
   

       body: Container(
            child: Column(children: [
         AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
                
              ),
              // ignore: deprecated_member_use
              Center(child: RaisedButton(
                onPressed: (){
                  setState(() {
                    if (_controller.value.isPlaying){
                      _controller.pause();
                    }
                    else
                    {
                      _controller.play();
                    }
                  });
                },
                child:Icon(_controller.value.isPlaying?Icons.pause:Icons.play_arrow ,),),
              ),
       ],
       ),
       ) ,
      //  body: FutureBuilder(
      //   future: _initializeVideoPlayerFuture,
      //   builder: (context, snapshot) {
      //     if (snapshot.connectionState == ConnectionState.done) {
      //       return Center(
      //         child: AspectRatio(
      //           aspectRatio: _controller.value.aspectRatio,
      //           child: VideoPlayer(_controller),
      //         ),
      //       );
      //     } else {
      //       return Center(
      //         child: CircularProgressIndicator(),
      //       );
      //     }
      //   },
      // ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     setState(() {
      //       if (_controller.value.isPlaying) {
      //         _controller.pause();
      //       } else {
      //         _controller.play();
      //       }
      //     });
      //   },
      //   child:
      //       Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
      // ),
    );
  }
}