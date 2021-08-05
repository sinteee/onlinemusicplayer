import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
final String title;
final Function onPressed;
final bool isLoading;

CustomButton({this.title,this.onPressed,this.isLoading});

  @override
  Widget build(BuildContext context) {
    bool _isLoading = isLoading ?? false;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 60,
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
        decoration: BoxDecoration(
            color:Color(0xD300001D),
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(
              color:Color(0xD300001D),
              width:2.0,


            ),
            boxShadow: [BoxShadow(
              color: Color(0xD300001D).withOpacity(0.4),
              spreadRadius: 5,
              blurRadius: 3,
              offset: Offset(0, 3), // changes position of shadow
            )]

        ),
        child: Stack(
          children: [
            Visibility(
              visible:  _isLoading ? false : true,
              child: Center(
                child: Text("${title}" ?? "Log In",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w800,),),
              ),
            ),
            Visibility(visible: _isLoading,child:  Center(child: SizedBox(height:30.0,width:30.0,child: CircularProgressIndicator())))
          ],
        ),
      ),
    );
  }
}
