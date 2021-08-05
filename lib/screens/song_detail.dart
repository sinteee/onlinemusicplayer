import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:myfirsteverapp/page_manager.dart';

class DetailSong extends StatefulWidget {


  @override
  _DetailSongState createState() => _DetailSongState();
}

class _DetailSongState extends State<DetailSong> {
  PageManager _pageManager ;

  @override
  void initState() {
    super.initState();
    _pageManager = PageManager('assets/audio/Audio Examples _ SoundHelix.mp3');
  }

  @override
  void dispose() {
    _pageManager.dispose();
    super.dispose();
  }






  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: Container(
          child: Column(
            children: [
              Expanded(
                flex: 8,
                child: Container(
                  padding: EdgeInsets.only(left: 15,right: 15,top: 30),
                  child: Card( semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: ClipRRect(
                      child: Image.network(
                        'https://placeimg.com/640/480/any',
                        fit: BoxFit.cover,
                      ),
                    ),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),

                  ),
                ),

              ),
              Expanded(flex:1,child: Container(padding: EdgeInsets.only(top: 10),child: Text("Heartless",style: TextStyle(color: Color(0xFF18CBA7),fontSize: 30,fontWeight: FontWeight.w700,),))),
              Expanded(flex:1,child: Text("The Weekend",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400,))),

              Expanded(flex:1,child:  ValueListenableBuilder<ProgressBarState>(
                valueListenable: _pageManager.progressNotifier,
                builder: (_, value, __) {
                  return ProgressBar(
                    timeLabelTextStyle: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),
                    progress: value.current,
                    buffered: value.buffered,
                    total: value.total,
                    onSeek: _pageManager.seek,
                  );
                },
              )),

              Expanded(

                  flex:3,child:Container(
                padding: EdgeInsets.only(right: 50),
                    child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                       children: [
                         Icon(Icons.favorite,color: Colors.red,size: 30,),
                         Icon(Icons.skip_previous,color: Colors.white,size: 50,),
                         ValueListenableBuilder<ButtonState>(
                           valueListenable: _pageManager.buttonNotifier,
                           builder: (_, value, __) {
                             switch (value) {
                               case ButtonState.loading:
                                 return Container(
                                   margin: EdgeInsets.all(8.0),
                                   width: 32.0,
                                   height: 32.0,
                                   child: CircularProgressIndicator(),
                                 );
                               case ButtonState.paused:
                                 return CircleAvatar(
                                   radius: 36,
                                   backgroundColor: Color(0xFF18CBA7),

                                   child: GestureDetector(onTap:(){

                                     _pageManager.play();



                                   },child: Icon(Icons.play_arrow,color: Colors.white,size: 50,)),
                                 );
                               case ButtonState.playing:
                                 return CircleAvatar(
                                   radius: 36,
                                   backgroundColor: Color(0xFF18CBA7),

                                   child: GestureDetector(onTap:(){

                                     _pageManager.pause();



                                   },child: Icon(Icons.pause,color: Colors.white,size: 50,)),
                                 );
                             }
                           },
                         )




                        ,
                         Icon(Icons.skip_next,color: Colors.white,size: 50,),

                       ],
              ),
                  ) )

            ],
          ),
        ),
      ),
    );
  }
}
