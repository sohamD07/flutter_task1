import 'package:flutter/material.dart';
import 'package:task1/NetAudio.dart';
import 'package:task1/Video.dart';
import 'package:video_player/video_player.dart';
import './LocalAudio.dart';

void main() => runApp(MyApp());  
  
class MyApp extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(  
        length: 4,  
        child: Scaffold(  
          appBar: AppBar(  
            title: Text('Media Player'),  
            bottom: TabBar(  
           //   isScrollable: true,
              tabs: [  
                Tab(icon: Icon(Icons.music_note), text: "Local",),
                Tab( icon: Icon(Icons.music_note),text: "Internet"),   
                Tab( icon: Icon(Icons.video_library),text: "Local"),
                Tab(icon: Icon(Icons.video_library), text: "Internet"),                
              ],  
            ),  
          ),  
          body: TabBarView(  
            children: [  
              LocalAudio(), 
              
              MyApp1(),

              ChewieListItem(
                videoPlayerController: VideoPlayerController.asset(
               'assets/video/money_heist.mp4',
                       ),
                looping: true,
              ),

              ChewieListItem(
                videoPlayerController:  VideoPlayerController.network(
              'http://www.onirikal.com/videos/mp4/audi_a7.mp4',
                       )
              ),

              
            ],  
          ),  
        ),  
      ),  
    );  
  }  
}  