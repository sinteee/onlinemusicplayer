import 'package:flutter/material.dart';

class Artists extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[850],
        body: Container(

            padding: EdgeInsets.only(top:30),
            child:Column(
              children: [

                Container(padding:EdgeInsets.only(bottom: 10),child:Text("Artists",style: TextStyle(color:Color(0xFF18CBA7),fontWeight: FontWeight.w700,fontSize: 30),)),

                Expanded(


                  child: GridView.count(
                    crossAxisCount: 2,

                    crossAxisSpacing: 4,
                    padding: EdgeInsets.only(left: 5,right: 5),
                    children: [
                      Container(
                        child: Column(
                          children: [Card( semanticContainer: true,
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

                            Container(padding:EdgeInsets.only(top: 6),child: Text("micheal jackson",style: TextStyle(color:Colors.white,fontWeight: FontWeight.w400)),)],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [Card( semanticContainer: true,
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

                            Container(padding:EdgeInsets.only(top: 6),child: Text("micheal jackson",style: TextStyle(color:Colors.white,fontWeight: FontWeight.w400)),)],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [Card( semanticContainer: true,
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

                            Container(padding:EdgeInsets.only(top: 6),child: Text("micheal jackson",style: TextStyle(color:Colors.white,fontWeight: FontWeight.w400)),)],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [Card( semanticContainer: true,
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

                            Container(padding:EdgeInsets.only(top: 6),child: Text("micheal jackson",style: TextStyle(color:Colors.white,fontWeight: FontWeight.w400)),)],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [Card( semanticContainer: true,
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

                            Container(padding:EdgeInsets.only(top: 6),child: Text("micheal jackson",style: TextStyle(color:Colors.white,fontWeight: FontWeight.w400)),)],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [Card( semanticContainer: true,
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

                            Container(padding:EdgeInsets.only(top: 6),child: Text("micheal jackson",style: TextStyle(color:Colors.white,fontWeight: FontWeight.w400)),)],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [Card( semanticContainer: true,
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

                            Container(padding:EdgeInsets.only(top: 6),child: Text("micheal jackson",style: TextStyle(color:Colors.white,fontWeight: FontWeight.w400)),)],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [Card( semanticContainer: true,
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

                            Container(padding:EdgeInsets.only(top: 6),child: Text("micheal jackson",style: TextStyle(color:Colors.white,fontWeight: FontWeight.w400)),)],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [Card( semanticContainer: true,
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

                            Container(padding:EdgeInsets.only(top: 6),child: Text("micheal jackson",style: TextStyle(color:Colors.white,fontWeight: FontWeight.w400)),)],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [Card( semanticContainer: true,
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

                            Container(padding:EdgeInsets.only(top: 6),child: Text("micheal jackson",style: TextStyle(color:Colors.white,fontWeight: FontWeight.w400)),)],
                        ),
                      ),


                    ],
                  ),
                )
              ],
            )


        ),
        bottomNavigationBar: Container(
          height: 60,
          decoration: BoxDecoration(
              color: Color(0xFF1A1A1A)
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
        ),
      ),
    );
  }
}
