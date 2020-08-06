import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ignore: camel_case_types
class video extends StatelessWidget {
  Widget build(BuildContext context) {
    
    mytoast() {
    Fluttertoast.showToast(
        msg: "Play video!!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.blue,
        textColor: Colors.white,
        fontSize: 18.0);
  }
    
    var myLeadingIcon = Icon(
      Icons.apps,
      color: Colors.white,
    );

    var myLeadingButton = IconButton(
      icon: myLeadingIcon, 
      onPressed:  () {
    Navigator.pop(context);
  }
  );

    var dotIcon = Icon(
      Icons.more_vert,
      color: Colors.white,
    );

    var dotIconButton = IconButton(icon: dotIcon, onPressed: mytoast());

    FlutterStatusbarcolor.setStatusBarColor(Colors.black);

    var myAppBar = AppBar(
      backgroundColor: Colors.black87,
      title: Text('My Videos !!'),
      leading: myLeadingButton,
      actions: <Widget>[
        dotIconButton,
      ]
    );


    var videoPlayerController = VideoPlayerController.network('https://github.com/Priyu623/on-my-way/raw/master/Alan_Walker_-_On_My_Way_(WhatsApp_Status_Video)_Latest_Whatsapp_Status_2019_%7C_English_Song_Status(720p).mp4');

    var videoVideo = ChewieController(
      videoPlayerController: videoPlayerController,
      aspectRatio: 3 / 2,
      autoPlay: false,
      autoInitialize: true,
      looping: false,
    );

   

    var videoPlayerController2 = VideoPlayerController.network(
        'https://github.com/Priyu623/satisfya/raw/master/IMRAN_KHAN_SATISFYA_OFFICIAL_VIDEO_SONG_NEW_WHATSAPP_STATUS_VIDEO(360p).mp4');

    var videoVideo2 = ChewieController(
      videoPlayerController: videoPlayerController2,
      aspectRatio: 3 / 2,
      autoPlay: false,
      autoInitialize: true,
      looping: false,
    );

    var videoPlayerController3 = VideoPlayerController.network(
        'https://github.com/Priyu623/light-up-vedio/raw/master/Light_up_light_up_skechers___whatsapp_status__official_video(720p).mp4');

    var videoVideo3 = ChewieController(
      videoPlayerController: videoPlayerController3,
      aspectRatio: 4 / 2,
      autoPlay: false,
      autoInitialize: true,
      looping: false,
    );  

    var myVideoBody = Container(
     width: double.infinity,
     height: double.infinity,
      decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://github.com/Priyu623/music-/raw/master/artworks-000161787470-qnnuy5-t500x500-2.jpg'),
              fit: BoxFit.cover,
            ),
          ),
     child: Column(
      children: <Widget>[
Container(
            margin: EdgeInsets.all(8),
            height: 180,
          alignment: Alignment.bottomCenter,
            child: Chewie(
          controller: videoVideo,
        )),
        
        Container(
            margin: EdgeInsets.all(8),
            height: 180,
          alignment: Alignment.bottomCenter,
            child: Chewie(
          controller: videoVideo2,
        )),
        Container(
            margin: EdgeInsets.all(8),
            height: 180,
          alignment: Alignment.bottomCenter,
            child: Chewie(
          controller: videoVideo3,
        )),   
         
      ],
     )
    );


    var home = Scaffold(
      appBar: myAppBar,
      body: myVideoBody,
    );

    var videoPage = MaterialApp(
      home: home,
      debugShowCheckedModeBanner: false,
    );
    return videoPage;
  }
}
