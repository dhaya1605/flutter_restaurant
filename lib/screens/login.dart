import 'package:flutter/material.dart';
import 'package:restaurant/screens/otpPage.dart';
import 'package:restaurant/screens/signup.dart';
import 'package:restaurant/styles.dart';

class loginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  bool showSpinner = false;
  @override
  Widget build(BuildContext context) {
    var mWidth = MediaQuery.of(context).size.width;
    var mHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            children: <Widget>[
              Container(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 30.0,
                      ),
                      Container(
                        width: double.infinity,
                        height: mHeight*0.5,
                        child: Image.asset('assets/images/login1.png'),
                      ),
//                      SizedBox(
//                        height: 30.0,
//                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    label("Phone Number"),
                    SizedBox(height: 10.0),
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: kBoxDecorationStyle,
                      height: 60.0,
                      child: TextField(
                        onChanged: (value){
//                        email_value = value;
                        },
                        keyboardType: TextInputType.phone,
                        style: textFieldStyle,
                        decoration: textFieldInputDecoration_email,
                      ),
                    ),
//                    SizedBox(height: 10.0),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => otpPage()));
                    },
                    child: SubmitButtons("Sign In",signUpButtonStyle)),
              ),
              FlatButton(
                onPressed: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>signupPage()));
                },
                child: Text("New User?",
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 20.0,
                  ),),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
