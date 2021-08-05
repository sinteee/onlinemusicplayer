import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:myfirsteverapp/screens/login.dart';
import 'package:myfirsteverapp/widgets/custom_listtile.dart';

import '../constants.dart';
import 'drawer.dart';

class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

        return Scaffold(
          backgroundColor: Colors.grey[850],
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.white,size:100),

            elevation: 0,
            backgroundColor:Colors.grey[850],



          ),
          drawer: Card(


            elevation: 25,
            child: Drawer(




                child: SideDrawer()
            ),


          ),

          body:  Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:[
                    Container(padding:EdgeInsets.only(bottom: 30),child:Text("Sinte Music!",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w700,color: Color(0xFF18CBA7)) ,)),
                    Container(
                      padding:EdgeInsets.only(bottom: 36),

                      child: Container(
                        height: 60,
                        margin:EdgeInsets.only(left: 20,right: 20),

                        decoration: BoxDecoration(
                            color:Color(0xFF383737),
                            borderRadius: BorderRadius.circular(16.0),

                            boxShadow: [BoxShadow(
                              color: Colors.grey[900].withOpacity(0.6),
                              spreadRadius: 6,
                              blurRadius: 7,
                              offset: Offset(0, 3), // changes position of shadow
                            )]
                        ),
                        child: TextFormField(
                          showCursor:true,

                          cursorColor: Colors.white,
                          style: Constants.regularDarkText,
                          decoration: InputDecoration(
                              hintText: "Songs, Albums and podcasts",
                              hintStyle: TextStyle(color:Color(0xFFC4C4C4),fontWeight: FontWeight.w400),

                              icon: Padding(
                                padding: const EdgeInsets.only(left:20.0,top: 7),
                                child: Icon(Icons.search,color: Color(0xFFC4C4C4),size: 38,),
                              ),
                              border:InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 20,
                                  horizontal: 20
                              )
                          ),

                        ),
                      ) ,)]),
              Container(padding:EdgeInsets.only(right: 250,bottom: 10),child:Text("New Music",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500,color: Color(0xFF18CBA7)))),


              Container(

                  height:186,child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),

                    child: Column(
                      mainAxisAlignment:MainAxisAlignment.start ,

                      children: [Expanded(
                        flex:15,
                        child: Card( semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: ClipRRect(
                            child: Image.network(
                              'https://placeimg.com/640/480/any',
                              fit: BoxFit.cover,
                            ),
                          ),

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 10,
                        ),
                      ),
                        Expanded(flex:3,child: Text("the way u",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 20,color: Colors.white),)),
                        Expanded(flex:2,child: Text("sinte",style: TextStyle(fontWeight: FontWeight.w200,fontSize: 16,color: Colors.white)))
                      ],
                    ),


                  ),
                  Container(
                    padding: const EdgeInsets.all(8),

                    child: Column(
                      mainAxisAlignment:MainAxisAlignment.start ,

                      children: [Expanded(
                        flex:15,
                        child: Card( semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: ClipRRect(
                            child: Image.network(
                              'https://placeimg.com/640/480/any',
                              fit: BoxFit.cover,
                            ),
                          ),

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 10,
                        ),
                      ),
                        Expanded(flex:3,child: Text("the way u",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 20,color: Colors.white),)),
                        Expanded(flex:2,child: Text("sinte",style: TextStyle(fontWeight: FontWeight.w200,fontSize: 16,color: Colors.white)))
                      ],
                    ),


                  ),
                  Container(
                    padding: const EdgeInsets.all(8),

                    child: Column(
                      mainAxisAlignment:MainAxisAlignment.start ,

                      children: [Expanded(
                        flex:15,
                        child: Card( semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: ClipRRect(
                            child: Image.network(
                              'https://placeimg.com/640/480/any',
                              fit: BoxFit.cover,
                            ),
                          ),

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 10,
                        ),
                      ),
                        Expanded(flex:3,child: Text("the way u",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 20,color: Colors.white),)),
                        Expanded(flex:2,child: Text("sinte",style: TextStyle(fontWeight: FontWeight.w200,fontSize: 16,color: Colors.white)))
                      ],
                    ),


                  ),
                  Container(
                    padding: const EdgeInsets.all(8),

                    child: Column(
                      mainAxisAlignment:MainAxisAlignment.start ,

                      children: [Expanded(
                        flex:15,
                        child: Card( semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: ClipRRect(
                            child: Image.network(
                              'https://placeimg.com/640/480/any',
                              fit: BoxFit.cover,
                            ),
                          ),

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 10,
                        ),
                      ),
                        Expanded(flex:3,child: Text("the way u",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 20,color: Colors.white),)),
                        Expanded(flex:2,child: Text("sinte",style: TextStyle(fontWeight: FontWeight.w200,fontSize: 16,color: Colors.white)))
                      ],
                    ),


                  )
                ],
              )),

              Container(padding:EdgeInsets.only(right: 250),child:Text("Best Music",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500,color: Color(0xFF18CBA7)))),
              Container(

                  height:186,child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),

                    child: Column(
                      mainAxisAlignment:MainAxisAlignment.start ,

                      children: [Expanded(
                        flex:15,
                        child: Card( semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: ClipRRect(
                            child: Image.network(
                              'https://placeimg.com/640/480/any',
                              fit: BoxFit.cover,
                            ),
                          ),

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 10,
                        ),
                      ),
                        Expanded(flex:3,child: Text("the way u",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 20,color: Colors.white),)),
                        Expanded(flex:2,child: Text("sinte",style: TextStyle(fontWeight: FontWeight.w200,fontSize: 16,color: Colors.white)))
                      ],
                    ),


                  ),
                  Container(
                    padding: const EdgeInsets.all(8),

                    child: Column(
                      mainAxisAlignment:MainAxisAlignment.start ,

                      children: [Expanded(
                        flex:15,
                        child: Card( semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: ClipRRect(
                            child: Image.network(
                              'https://placeimg.com/640/480/any',
                              fit: BoxFit.cover,
                            ),
                          ),

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 10,
                        ),
                      ),
                        Expanded(flex:3,child: Text("the way u",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 20,color: Colors.white),)),
                        Expanded(flex:2,child: Text("sinte",style: TextStyle(fontWeight: FontWeight.w200,fontSize: 16,color: Colors.white)))
                      ],
                    ),


                  ),
                  Container(
                    padding: const EdgeInsets.all(8),

                    child: Column(
                      mainAxisAlignment:MainAxisAlignment.start ,

                      children: [Expanded(
                        flex:15,
                        child: Card( semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: ClipRRect(
                            child: Image.network(
                              'https://placeimg.com/640/480/any',
                              fit: BoxFit.cover,
                            ),
                          ),

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 10,
                        ),
                      ),
                        Expanded(flex:3,child: Text("the way u",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 20,color: Colors.white),)),
                        Expanded(flex:2,child: Text("sinte",style: TextStyle(fontWeight: FontWeight.w200,fontSize: 16,color: Colors.white)))
                      ],
                    ),


                  ),
                  Container(
                    padding: const EdgeInsets.all(8),

                    child: Column(
                      mainAxisAlignment:MainAxisAlignment.start ,

                      children: [Expanded(
                        flex:15,
                        child: Card( semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: ClipRRect(
                            child: Image.network(
                              'https://placeimg.com/640/480/any',
                              fit: BoxFit.cover,
                            ),
                          ),

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 10,
                        ),
                      ),
                        Expanded(flex:3,child: Text("the way u",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 20,color: Colors.white),)),
                        Expanded(flex:2,child: Text("sinte",style: TextStyle(fontWeight: FontWeight.w200,fontSize: 16,color: Colors.white)))
                      ],
                    ),


                  )
                ],
              )),



            ],



          ),



        );
      }

}

/*
GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            child:Card( semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(
                children: [ClipRRect(
                  child: Image.network(
                    'https://placeimg.com/640/480/any',
                    fit: BoxFit.cover,
                  ),
                ),
                  Positioned(
                    bottom: 0,
                    left:0,
                    right:0,

                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "title", style: Constants.regularHeading,),
                          Text(
                            "price",style: TextStyle(fontSize: 18.0,color:Theme.of(context).accentColor,
                              fontWeight: FontWeight.w600),)
                        ],
                      ),
                    ),
                  )],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 10,
             ),

          ),
          Container(
            padding: const EdgeInsets.all(8),
            child:Card( semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.network(
                'https://placeimg.com/640/480/any',
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 10,
            ),
            color: Colors.teal[100],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child:Card( semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.network(
                'https://placeimg.com/640/480/any',
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 10,
            ),
            color: Colors.teal[100],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child:Card( semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.network(
                'https://placeimg.com/640/480/any',
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 10,
            ),
            color: Colors.teal[100],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child:Card( semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.network(
                'https://placeimg.com/640/480/any',
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 10,
            ),
            color: Colors.teal[100],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child:Card( semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.network(
                'https://placeimg.com/640/480/any',
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 10,
            ),
            color: Colors.teal[100],
          ),
        ],
      ),
 */