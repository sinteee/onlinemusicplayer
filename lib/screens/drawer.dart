import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myfirsteverapp/screens/artist.dart';
import 'package:myfirsteverapp/screens/home.dart';
import 'package:myfirsteverapp/screens/main.dart';
import 'package:myfirsteverapp/screens/podcast_list.dart';
import 'package:myfirsteverapp/screens/song.dart';
import 'package:myfirsteverapp/screens/song_detail.dart';
import 'package:myfirsteverapp/widgets/custom_listtile.dart';
import 'package:myfirsteverapp/screens/album.dart';

import 'album_artist_song.dart';
class SideDrawer extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  Container(
          decoration: BoxDecoration( color:Color(0xFF085A4A),
              ),
          child: ListView(
            padding: EdgeInsets.only(top:60),

            children: [


              Container(

                padding: EdgeInsets.symmetric(vertical: 2),
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.symmetric(horizontal:40.0,vertical: 20),
                    child: Text( "Sinte Music!",style: TextStyle(color:Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                  ),


                ),
              ),

              Divider(color:Colors.grey,thickness: 1,indent: 20,endIndent: 20,),

              GestureDetector(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
              }, child: CustomListTile(title:"Home",icon:Icons.home_sharp)),
              GestureDetector(onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Songs()));
              },child: CustomListTile(title:"Songs",icon:Icons.music_note)),
              GestureDetector(onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Artists()));
              },child: CustomListTile(title:"Artists",icon:Icons.person)),
              GestureDetector(onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Albums()));
              },child: CustomListTile(title:"Albums",icon:Icons.album_rounded)),
              GestureDetector(onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PodcastList()));
              },child: CustomListTile(title:"favorite",icon:Icons.favorite)),
              Divider(color:Colors.grey,thickness: 1,indent: 20,endIndent: 20,),

              GestureDetector(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AASongs()));

              },child: CustomListTile(title:"Settings",icon:Icons.settings)),
            GestureDetector(onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailSong()));
            },child:CustomListTile(title:"Logout",icon:Icons.logout)),



            ],
          ));

  }
}
