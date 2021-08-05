import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myfirsteverapp/screens/register.dart';
import 'package:myfirsteverapp/services/auth.dart';
import 'package:myfirsteverapp/widgets/custom_btn.dart';
import 'package:myfirsteverapp/widgets/custom_input.dart';

import 'home.dart';
class LoginPage extends StatefulWidget {


  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  AuthServices _authServices = AuthServices();
  final _formKey = GlobalKey<FormState>();
  bool _isValid = false;
  bool _loginFormLoading =false;
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
  void _submitForm() async{
    setState(() {
      _loginFormLoading=true;
    });

    String _signInFeedback= await _authServices.signIn(_emailTextController.text,_passwordTextController.text);
    if(_signInFeedback!=null){

      setState(() {
        _loginFormLoading=false;
      });
      _showDialog(_signInFeedback);

    }
    else{
      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
    }

  }
  bool _isEmailValid(String value) {
    String pattern =
        r"^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))$";
    RegExp regExp = new RegExp(pattern);

    return regExp.hasMatch(value);
  }
  void _showDialog(er) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(

          content: new Text(er,style: TextStyle(color:Colors.red,fontWeight: FontWeight.bold,fontSize: 26),),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }







  final Future<FirebaseApp> _initialization =  Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {



      return Scaffold(
          resizeToAvoidBottomInset: false,
          body: Container(
            padding: EdgeInsets.only(top: 40),

            child: Column(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    height: 120,
                    margin: EdgeInsets.symmetric(horizontal: 80),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: Color(0xD3000010),
                        boxShadow: [BoxShadow(
                          color: Color(0xD300001D).withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        )
                        ]

                    ),
                    child: (Center(
                        child: Text("log in!", style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Raleway Dots',
                            fontWeight: FontWeight.w700,
                            fontSize: 30),)
                    ))
                ),
                Container(

                  child: Form(
                    key: _formKey,
                    onChanged: () {
                      final isValid = _formKey.currentState.validate();
                      if (_isValid != isValid) {
                        setState(() {
                          _isValid = isValid;
                        });
                      }
                    },
                    child: Column(

                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          CustomInput(
                            hintText: "Email",
                            inputicon: Icon(Icons.mail),
                            controller: _emailTextController,
                            validator: (value) {
                              if (value.isEmpty) {
                                return "email is required";
                              }
                              if (!_isEmailValid(value)) {
                                return "Must be a valid email address";
                              }
                            },
                          ), CustomInput(
                            hintText: "Password",
                            inputicon: Icon(Icons.lock_outline),
                            controller: _passwordTextController,
                            validator: (value) {
                              if (value.isEmpty) {
                                return "Password is required";
                              }
                              if (value.length < 6) {
                                return "Password must be a atleast 6 character";
                              }
                            },
                          )
                          , CustomButton(title: "Log In",
                              onPressed: () {
                                _submitForm();
                              },
                              isLoading: _loginFormLoading)
                        ]),
                  ),
                ),


                Padding(
                  padding: EdgeInsets.only(top: 55),
                  child: CustomButton(title: "Sign Up", onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => RegisterPage()));
                  },),
                )
              ]

              ,
            ),

          ));

  }
}

