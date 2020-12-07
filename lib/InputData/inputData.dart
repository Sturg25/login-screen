import 'package:flutter/material.dart';
import 'package:my_personal_app/validation/validation.dart';

import '../utilities/constants.dart';

class InputData{

  static Widget buildNameTF(TextEditingController myText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Name',
          style: kLabelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextFormField(
            textCapitalization: TextCapitalization.words,
            controller: myText,
            style: TextStyle(
              color: Colors.grey,
              fontFamily: 'ProximaNova',
            ),
            validator: ValidationData.firstNameValidate,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.person,
                color: Colors.grey,
              ),
              hintText: 'Enter your Name',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

 static Widget buildEmailTF(TextEditingController myText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email',
          style: kLabelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextFormField(
            textCapitalization: TextCapitalization.words,
            controller: myText,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.grey,
              fontFamily: 'ProximaNova',
              fontWeight: FontWeight.bold,
            ),
            validator: ValidationData.emailValidate,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.grey,
              ),
              hintText: 'Enter your Email',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

 static Widget buildPasswordTF(TextEditingController myText) {
   return Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: <Widget>[
       Text(
         'Password',
         style: kLabelStyle,
       ),
       SizedBox(height: 10.0),
       Container(
         alignment: Alignment.centerLeft,
         decoration: kBoxDecorationStyle,
         height: 60.0,
         child:  TextFormField(
           controller: myText,
           obscureText: true,
           style: TextStyle(
             color: Colors.grey,
             fontFamily: 'ProximaNova',
           ),
           validator: ValidationData.passwordValidate,
           decoration: InputDecoration(
             border: InputBorder.none,
             contentPadding: EdgeInsets.only(top: 14.0),
             prefixIcon: Icon(
               Icons.lock,
               color: Colors.grey,
             ),
             hintText: 'Enter your Password',
             hintStyle: kHintTextStyle,
           ),
         ),
       ),
     ],
   );
 }

 static Widget buildNumberTF(TextEditingController myText) {
   return Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: <Widget>[
       Text(
         'Phone Number',
         style: kLabelStyle,
       ),
       SizedBox(height: 10.0),
       Container(
         alignment: Alignment.centerLeft,
         decoration: kBoxDecorationStyle,
         height: 60.0,
         child:  TextFormField(
           controller: myText,
           obscureText: true,
           style: TextStyle(
             color: Colors.grey,
             fontFamily: 'ProximaNova',
           ),
           validator: ValidationData.mobileValidate,
           decoration: InputDecoration(
             border: InputBorder.none,
             contentPadding: EdgeInsets.only(top: 14.0),
             prefixIcon: Icon(
               Icons.call,
               color: Colors.grey,
             ),
             hintText: 'Enter your Phone Number',
             hintStyle: kHintTextStyle,
           ),
         ),
       ),
     ],
   );
 }

 static Widget buildLoginBtn(var buttonTitle, Function function) {
   return Container(
    //  height: 90,
     padding: EdgeInsets.only(right: 40,left: 40,bottom: 15),
     width: double.infinity,
     child: RaisedButton(
       onPressed: () {
         function();
       },
       padding: EdgeInsets.all(15.0),
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(15.0),
       ),
       color: Color(0x8C8C8C),
       child: Text(
         buttonTitle,
         style: TextStyle(
           color: Colors.white,
           letterSpacing: 1.5,
           fontSize: 18.0,
           fontWeight: FontWeight.bold,
           fontFamily: 'ProximaNova',
         ),
       ),
     ),
   );
 }

  static Widget buildNextBtn(var buttonTitle, Function function) {
    return Container(
      padding: EdgeInsets.only(right: 30,left: 30,bottom: 15),
      width: double.infinity,
      child: RaisedButton(
        onPressed: () {
          function();
        },
        padding: EdgeInsets.all(10.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.grey[700],
        child: Text(
          buttonTitle,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'ProximaNova',
          ),
        ),
      ),
    );
  }

  static Widget buildSignOutBtn(var buttonTitle, Function function) {
    return Container(
      //  height: 90,
      padding: EdgeInsets.only(right: 120,left: 120,bottom: 15),
      width: double.infinity,
      child: RaisedButton(
        onPressed: () {
          function();
        },
        padding: EdgeInsets.all(10.10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.red[900],
        child: Text(
          buttonTitle,
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'ProximaNova',
          ),
        ),
      ),
    );
  }

  static Widget buildGuestBtn(var buttonTitle, Function function) {
    return Container(
      //  height: 90,
      padding: EdgeInsets.only(right: 40,left: 40,bottom: 15),
      width: double.infinity,
      child: RaisedButton(
        onPressed: () {
          function();
        },
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Color(0x8C8C8C),
        child: Text(
          buttonTitle,
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'ProximaNova',
          ),
        ),
      ),
    );
  }

 static Widget buildSignupSigninBtn(var quetion, var pageName, Function function) {
   return Padding(padding: EdgeInsets.only(bottom: 0,top: 5),child: GestureDetector(
     onTap: () {
       function();
     },
     child: RichText(
       text: TextSpan(
         children: [
           TextSpan(
             text: quetion,
             style: TextStyle(
               color: Colors.grey,
               fontSize: 18.0,
               fontWeight: FontWeight.w400,
             ),
           ),
           TextSpan(
             text: pageName,
             style: TextStyle(
               color: Colors.grey,
               fontSize: 18.0,
               fontWeight: FontWeight.bold,
             ),
           ),
         ],
       ),
     ),
   ),);
 }

 static Widget yourAppbar(var title, Icon icon, Function function){
    return AppBar(
      centerTitle: true,
      backgroundColor: Color(0xFF73AEF5),
      title: Text(title,style: TextStyle(
        color: Colors.white,
        fontFamily: 'ProximaNova',
        fontWeight: FontWeight.bold,
      ),),
      actions: <Widget>[
        IconButton(icon: icon, onPressed: (){
          function();
        })
      ],
    );
 }

}