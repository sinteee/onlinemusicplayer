import 'package:flutter/material.dart';

class AsListtile extends StatelessWidget {
  final String title;
  final Function onTap;
  AsListtile({this.title,this.onTap});



  @override
  Widget build(BuildContext context) {
    return Container(child:
    ListTile(
      onTap: onTap,
      contentPadding: EdgeInsets.only(left: 18,top: 10,bottom: 10),
      leading:  Container(
        width: 70,
        height: 70,
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
      title: Text(title, style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 16),),

    ));
  }
}
