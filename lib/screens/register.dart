import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myfirsteverapp/screens/home.dart';
import 'package:myfirsteverapp/widgets/custom_btn.dart';
import 'package:myfirsteverapp/widgets/custom_input.dart';
import 'package:myfirsteverapp/services/auth.dart';
class RegisterPage extends StatefulWidget {


  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  bool _isValid = false;
  AuthServices _authServices = AuthServices();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();

  TextEditingController _confirmPasswordController = TextEditingController();
  bool _registerFormLoading =false;
  void _submitForm() async{
    setState(() {
      _registerFormLoading=true;
    });
    String _createAccountFeedback= await _authServices.createAccount(_emailTextController.text,_passwordTextController.text);
    if(_createAccountFeedback!=null){

      setState(() {
        _registerFormLoading=false;
      });
     _showDialog(_createAccountFeedback);

    }
    else{
      Navigator.pop(context);
    }

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


  @override
  Widget build(BuildContext context) {
    return
        Scaffold(
            resizeToAvoidBottomInset: false,
            body:Container(
              padding: EdgeInsets.only(top: 40),

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

                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        height: 120,
                        margin: EdgeInsets.symmetric(horizontal: 80),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80),
                            color:Color(0xD3000010),
                            boxShadow: [BoxShadow(
                              color: Color(0xD3000010).withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3), // changes position of shadow
                            )]

                        ),
                        child:(Center(
                            child:Text("sign up!",style: TextStyle(color:Colors.grey,  fontFamily: 'Raleway Dots',fontWeight: FontWeight.w700,fontSize: 30),)
                        ))
                    ),
                    Container(

                      child:  Column(

                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[

                            CustomInput(
                              inputicon: Icon(Icons.mail),
                              hintText: "Email",
                              controller: _emailTextController,
                              validator: (value){
                                if (value.isEmpty) {
                                  return "email is required";
                                }

                              },


                            ), CustomInput(
                              inputicon: Icon(Icons.lock_outline),
                              hintText: "Password",
                              controller: _passwordTextController,
                              validator: (value){
                                if (value.isEmpty) {
                                  return "Password is required";
                                }
                                if (value.length<6) {
                                  return "Password must be a atleast 6 character";
                                }
                              },
                            ),
                            CustomInput(
                              inputicon: Icon(Icons.lock_outline),
                              hintText: "Confirm Password",

                              validator: (value){
                                if (value.isEmpty) {
                                  return "Confirm Password is required";
                                }
                                if (_passwordTextController.text!=value) {
                                  return "the passwords do not match";
                                }
                              },
                            )
                            ,CustomButton(title:"Sign Up",
                            onPressed: ()async{


                              if (_formKey.currentState.validate()) {
                                // If the form is valid, display a snackbar. In the real world,
                                // you'd often call a server or save the information in a database.

                               _submitForm();

                              }
                            },
                                isLoading:   _registerFormLoading

                            )] ),
                    ),
                    Spacer(),
                    Spacer(),
                    Spacer(),


                       Flexible(
                       flex:12,
                         child: CustomButton(title:"Back To Login",
                      onPressed: (){
                          Navigator.pop(context);
                      },),
                       ),
                    ]

                  ,
                ),
              ),

            ));
  }
}
