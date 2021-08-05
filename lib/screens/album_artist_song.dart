import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:myfirsteverapp/widgets/album_song_listtile.dart';

class AASongs extends StatefulWidget {
   String songId;
  AASongs({this.songId});
  @override
  _AASongsState createState() => _AASongsState();
}

class _AASongsState extends State<AASongs> {
  bool _temp_player=false;

  final CollectionReference _songRef  = FirebaseFirestore.instance.collection('song');




  @override
  Widget build(BuildContext context) {
    return MaterialApp(




        home:Scaffold(
          backgroundColor: Colors.grey[900],
          appBar: AppBar(
            backgroundColor:Colors.grey[900],
            elevation:0,

            actions: [
              Row(

                children: [
                  Container( padding: const EdgeInsets.only(right:155,top: 30),child: GestureDetector(onTap:(){
                    Navigator.pop(context);
                  },child: Icon(Icons.arrow_back,color: Colors.white,size: 30,)),),
                  Padding(

                    padding: const EdgeInsets.only(right:130.0,top: 30),
                    child: Container(child: Text("Album music",style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w500),),),
                  )
                ],
              ),
            ],),
          body:Container(
        child:    FutureBuilder<QuerySnapshot>(
            future: _songRef.get(),
      builder:
          (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {

        if (snapshot.hasError) {
          return Text("Something went wrong");
        }



        if (snapshot.connectionState == ConnectionState.done) {

          return ListView(



            padding: EdgeInsets.only(left:5,top: 30,),
            children: snapshot.data.docs.map((document){
              Map<String, dynamic> data = document.data() as Map<String, dynamic>;
              widget.songId=data['id'];

              return AsListtile(
                title: data['title'],

                onTap: (){
                  setState(() {

                    _temp_player=true;
                  });
                  print(widget.songId);

                },

              );
            }).toList(),
          );





        }

        return Container(child:CircularProgressIndicator());



      },








)
          ),

bottomNavigationBar: _temp_player?
    FutureBuilder<DocumentSnapshot>(
    future: _songRef.doc(widget.songId).get(),
    builder:
    (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
    if (snapshot.hasError) {
    return Text("Something went wrong");
    }

    if (snapshot.connectionState == ConnectionState.done) {
    Map<String, dynamic> data = snapshot.data.data() as Map<String, dynamic>;
    return  Container(
    height: 80,
    child: Card(

    color:Color(0xFF101010),
    elevation: 50,
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children:[
    Container(
    padding: EdgeInsets.only(left:20),
    child: Container(
    width: 50,
    height: 50,
    decoration: BoxDecoration(
    color: Color(0xFF111111),
    borderRadius: BorderRadius.circular(16.0),

    boxShadow: [BoxShadow(
    color: Colors.grey[900].withOpacity(0.6),
    spreadRadius: 6,
    blurRadius: 7,
    offset: Offset(0, 3), // changes position of shadow
    )]
    ),
    child: Icon(Icons.music_note,size: 40,color: Colors.grey),
    ),
    ),
    Padding(
    padding: const EdgeInsets.only(right:50.0),
    child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children:[Container(child: Text("${data['title']}",style: TextStyle(color:Colors.white,fontWeight: FontWeight.w400),),),Container(child: Text("alec benjamin",style: TextStyle(color:Colors.white,fontWeight: FontWeight.w300)),)]),
    ),
    Container(
    padding: EdgeInsets.only(right: 40),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Icon(Icons.skip_previous,color: Colors.white,size: 45,),
    Icon(Icons.pause,color: Colors.white,size:45),
    Icon(Icons.skip_next,color: Colors.white,size:45),
    ],
    ),)

    ]),
    ),
    );
    }
    }):null




       ));
  }
}
