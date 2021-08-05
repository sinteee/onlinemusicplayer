import 'package:flutter/material.dart';

import '../constants.dart';
class CustomInput extends StatelessWidget {
final Widget inputicon;
final String hintText;
final Function validator;
final Function onChanged;
final TextEditingController controller;
CustomInput({this.inputicon,this.hintText,this.validator,this.onChanged,this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 30
      ),
          decoration: BoxDecoration(
              color:Color(0xFFF2F2F2),
               borderRadius: BorderRadius.circular(16.0),
              border: Border.all(
                color:Color(0xD3151414),
                width:2.0,


              ),
            boxShadow: [BoxShadow(
              color: Color(0xFFF2F2F2).withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            )]
          ),
      child: TextFormField(
        showCursor:true,
        onChanged: onChanged,
        controller: controller,
        cursorColor: Colors.black,
        style: Constants.regularDarkText,
        validator: validator,

        decoration: InputDecoration(
            errorStyle: TextStyle(
              fontSize: 16.0,
            ),
          hintText: hintText,
            labelStyle:TextStyle(fontSize: 40),
          icon:inputicon ?? Icon(Icons.ac_unit,color: Colors.grey,),
          border:InputBorder.none,
          contentPadding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 20
          )
        ),

      ),
    );
  }


}
