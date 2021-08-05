import 'package:flutter/material.dart';

class PodcastList extends StatelessWidget {


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
                  Container( padding: const EdgeInsets.only(right:105,top: 30),child: Icon(Icons.arrow_back,color: Colors.white,size: 30,),),
                  Padding(

                    padding: const EdgeInsets.only(right:130.0,top: 30),
                    child: Container(child: Text("New music",style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w500),),),
                  )
                ],
              ),
            ],),
          body:Container(


            child:ListView(


              padding: EdgeInsets.only(left:5,top: 30,),
              children: [

                ListTile(
                  contentPadding: EdgeInsets.only(left: 18,top: 10,bottom: 10),
                  leading:  Card( semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: ClipRRect(
                      child: Image.asset(
                        'assets/images/nature',
                        fit: BoxFit.cover,
                      ),
                    ),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 0,
                  ),
                  title: Text("The Way You Felt - Alec Benjamin", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 16),),

                ),

                
                ListTile(
                  contentPadding: EdgeInsets.only(left: 18,top: 10,bottom: 10),
                  leading:  Card( semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: ClipRRect(
                      child: Image.asset(
                        'assets/images/nature',
                        fit: BoxFit.cover,

                      ),
                    ),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 0,
                  ),
                  title: Text("The Way You Felt - Alec Benjamin", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 16),),

                ),

                ListTile(
                  contentPadding: EdgeInsets.only(left: 18,top: 10,bottom: 10),
                  leading:  Card( semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: ClipRRect(
                      child: Image.asset(
                        'assets/images/nature',
                        fit: BoxFit.cover,
                      ),
                    ),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 0,
                  ),
                  title: Text("The Way You Felt - Alec Benjamin", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 16),),

                ),

                ListTile(
                  contentPadding: EdgeInsets.only(left: 18,top: 10,bottom: 10),
                  leading:  Card( semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: ClipRRect(
                      child: Image.asset(
                        'assets/images/nature',
                        fit: BoxFit.cover,
                      ),
                    ),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 0,
                  ),
                  title: Text("JRE", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 16),),
                  subtitle:Text("joe rogan ", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 14) ,

                ))
              ],
            ),


          ),

          bottomNavigationBar:
          Container(
            height: 60,
            decoration: BoxDecoration(
                color: Color(0xFF1A1A1A),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius:  1.0,
                    blurRadius: 30.0,
                  )
                ]
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.home_sharp,size: 36,color: Colors.white,),
                Icon(Icons.person,size: 36,color: Colors.white),
                Icon(Icons.album,size: 36,color: Colors.white),
                Icon(Icons.mic,size: 36,color: Colors.white)

              ],
            ),
          )

         ,));
  }
}
