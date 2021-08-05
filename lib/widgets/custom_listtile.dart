import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class CustomListTile extends StatelessWidget {
  final String title;
  final IconData icon;
  CustomListTile({this.title,this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(

        padding: EdgeInsets.symmetric(vertical: 2),
        child: ListTile(
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal:40.0),
            child: Text("${title}" ?? "home",style: TextStyle(color:Colors.white,fontSize: 22,fontWeight: FontWeight.normal),),
          ),

          leading: Padding(

            padding: const EdgeInsets.only(left:25),
            child: Icon(icon,color: Colors.white,size:25),
          ),
        ),
      ),
    );
  }
}
