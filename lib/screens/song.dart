import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Songs extends StatelessWidget {


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

          Divider(color: Colors.grey,),
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
          Divider(color: Colors.grey,),
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
          Divider(color: Colors.grey,),
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

          )
        ],
      ),


    ),

     bottomNavigationBar:


     Container(
       height: 80,
       child: Card(

         color:Color(0xFF101010),
         elevation: 50,
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children:[
           Container(
             padding: EdgeInsets.only(left:20),
             child: Card(


               semanticContainer: true,
               clipBehavior: Clip.antiAliasWithSaveLayer,
               child: ClipRRect(
                 child: Image.asset(
                   'assets/images/nature',
                   height: 60,
                   width: 60,
                   fit: BoxFit.cover,
                 ),
               ),

               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(10.0),
               ),
               elevation: 0,
               shadowColor: Color(0xFF101010),
             ),
           ),
             Padding(
               padding: const EdgeInsets.only(right:50.0),
               child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children:[Container(child: Text("The way you ",style: TextStyle(color:Colors.white,fontWeight: FontWeight.w400),),),Container(child: Text("alec benjamin",style: TextStyle(color:Colors.white,fontWeight: FontWeight.w300)),)]),
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
     ),));
  }
}
