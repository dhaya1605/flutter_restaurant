import 'package:flutter/material.dart';
import 'main.dart';


const primaryColor = Color(0xFFEF6C00);
const secondaryColor = Color(0xFF43A037);
Alignment downRight = Alignment(0.9, 1.0);



class textBar extends StatelessWidget {
  textBar(this.hint,this.color,this.password);
  String hint;
  Color color;
  bool password;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: color),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
        child: TextField(
          onChanged: (value){

          },
          textAlign: TextAlign.center,
          obscureText: password,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hint,
            hintStyle: TextStyle(color: color),
          ),
        ),
      ),
    );
  }
}

class label extends StatelessWidget {
  label(this.lName);
  String lName;

  @override
  Widget build(BuildContext context) {
    return Text(
      lName,
      style: kLabelStyle,
    );
  }
}

class SubmitButtons extends StatelessWidget {
  SubmitButtons(this.name,this.style);
  String name;
  final style;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        decoration: style,
        height: 60.0,
        child: Text(
          name,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 17.0,
            fontWeight: FontWeight.bold,
          ),
        )
    );
  }
}

final kHintTextStyle = TextStyle(
  color: primaryColor,
  fontFamily: 'OpenSans',
);

final submitHintStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

final kLabelStyle = TextStyle(
  color: primaryColor,
  fontWeight: FontWeight.bold,
  fontFamily: 'lemonada',
);

final kBoxDecorationStyle = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: primaryColor,
      blurRadius: 10.0,
      offset: Offset(0, 2),
    ),
  ],
);

final loginButtonStyle = BoxDecoration(
  color: primaryColor,
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: primaryColor,
      blurRadius: 10.0,
      offset: Offset(0, 2),
    ),
  ],
);

final signUpButtonStyle = BoxDecoration(
  color: secondaryColor,
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: secondaryColor,
      blurRadius: 10.0,
      offset: Offset(0, 2),
    ),
  ],
);


final textFieldStyle = TextStyle(
  color: Colors.black,
  fontFamily: 'OpenSans',
);

final textFieldInputDecoration_email = InputDecoration(
  border: InputBorder.none,
  contentPadding: EdgeInsets.only(top: 14.0),
  prefixIcon: Icon(
    Icons.phone_android,
    color: primaryColor,
  ),
  hintText: 'Enter your Mobile Number',
  hintStyle: kHintTextStyle,
);

final textFieldInputDecoration_password = InputDecoration(
  border: InputBorder.none,
  contentPadding: EdgeInsets.only(top: 14.0),
  prefixIcon: Icon(
    Icons.lock,
    color: primaryColor,
  ),
  hintText: 'Enter your Password',
  hintStyle: kHintTextStyle,
);

final textFieldInputDecoration_username = InputDecoration(
  border: InputBorder.none,
  contentPadding: EdgeInsets.only(top: 14.0),
  prefixIcon: Icon(
    Icons.account_circle,
    color: primaryColor,
  ),
  hintText: 'Enter your Name',
  hintStyle: kHintTextStyle,
);

final textFieldInputDecoration_confirmPassword = InputDecoration(
  border: InputBorder.none,
  contentPadding: EdgeInsets.only(top: 14.0),
  prefixIcon: Icon(
    Icons.lock,
    color: primaryColor,
  ),
  hintText: 'Re-enter the password',
  hintStyle: kHintTextStyle,
);


