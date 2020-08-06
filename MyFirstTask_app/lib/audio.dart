import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:chewie_audio/chewie_audio.dart';
import 'package:video_player/video_player.dart';
import 'package:fluttertoast/fluttertoast.dart';


// ignore: camel_case_types
class audio extends StatelessWidget {
  Widget build(BuildContext context) {
 mytoast() {
    Fluttertoast.showToast(
        msg: " GOOD LUCK !!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.blueAccent.shade100,
        textColor: Colors.white,
        fontSize: 20.0);
  }
    

// ignore: unused_local_variable
var myLeadingIconAudio = Icon(
      Icons.apps,
       color: Colors.purpleAccent,
    );

    // ignore: unused_local_variable
    var myLeadingButtonAudio =
        IconButton(icon: myLeadingIconAudio, onPressed:  () {
    Navigator.pop(context);
  });

    var dotIconAudio = Icon(
      Icons.more_vert,
      color: Colors.white,
    );

    var dotIconButtonAudio = IconButton(icon: dotIconAudio, onPressed: mytoast);

    FlutterStatusbarcolor.setStatusBarColor(Colors.black);

    var myAppBarMusic = AppBar(
      backgroundColor: Colors.black87,
      title: Text('MUSIC LOVER !!'),
      leading: myLeadingButtonAudio,
      actions: <Widget>[
        dotIconButtonAudio,
      ],
    );

    var videoPlayerController = VideoPlayerController.network('https://github.com/Priyu623/on-my-way/raw/master/Alan_Walker_-_On_My_Way_(WhatsApp_Status_Video)_Latest_Whatsapp_Status_2019_%7C_English_Song_Status(720p).mp4');

    var audio = ChewieAudioController(
      videoPlayerController: videoPlayerController,
      autoPlay: false,
      looping: false,
      materialProgressColors: ChewieProgressColors(
        playedColor: Colors.greenAccent,
        handleColor: Colors.red,
        backgroundColor: Colors.black,
        bufferedColor: Colors.amberAccent,
      ),
      autoInitialize: true,
    );

    var videoPlayerController2 = VideoPlayerController.network('https://github.com/Priyu623/satisfya/raw/master/IMRAN_KHAN_SATISFYA_OFFICIAL_VIDEO_SONG_NEW_WHATSAPP_STATUS_VIDEO(360p).mp4');

    var audio2 = ChewieAudioController(
      videoPlayerController: videoPlayerController2,
      autoPlay: false,
      looping: false,
      materialProgressColors: ChewieProgressColors(
        playedColor: Colors.red,
        handleColor: Colors.red,
        backgroundColor: Colors.black54,
        bufferedColor: Colors.lightGreen,
      ),
      autoInitialize: true,
    );

var videoPlayerController3 = VideoPlayerController.network('https://github.com/Priyu623/light-up-vedio/raw/master/Light_up_light_up_skechers___whatsapp_status__official_video(720p).mp4');

    var audio1 = ChewieAudioController(
      videoPlayerController: videoPlayerController3,
      autoPlay: false,
      looping: false,
      materialProgressColors: ChewieProgressColors(
        playedColor: Colors.red,
        handleColor: Colors.red,
        backgroundColor: Colors.black54,
        bufferedColor: Colors.lightGreen,
      ),
      autoInitialize: true,
    );
    var myAudioBody = Container(
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
              margin: EdgeInsets.all(10),
              height: 50,
              child: ChewieAudio(
                controller: audio,
              ),
            ),
             Container(
              margin: EdgeInsets.all(10),
              height: 50,
              child: ChewieAudio(
                controller: audio2,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 50,
              child: ChewieAudio(
                controller: audio1,
              ),
            ),
          ],
        ));

    var home = Scaffold(
      appBar: myAppBarMusic,
      body: myAudioBody,
    );

    var musicPage = MaterialApp(
      home: home,
      debugShowCheckedModeBanner: false,
    );
    return musicPage;
  }
}
