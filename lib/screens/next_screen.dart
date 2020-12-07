import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_personal_app/screens/login_screen.dart';
import 'package:my_personal_app/screens/profile_screen.dart';
import 'package:my_personal_app/InputData/inputData.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../utilities/constants.dart';
import 'dart:async';

class NextScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => NextScreenState();
}

class NextScreenState extends State<NextScreen> {

  Future signOutPage() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));

  }  Future profilePage() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => ProfileScreen()));
  }

  Future<void> _signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      print(e); // TODO: show dialog with error
    }
  }

  static Widget SignOutBtn(var buttonTitle, Function function, Function functions) {
    return Container(
      //  height: 90,
      padding: EdgeInsets.only(right: 120,left: 120,bottom: 15),
      width: double.infinity,
      child: RaisedButton(
        onPressed: () {
          function();
          functions();
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
          child: AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.light,
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Stack(
                children: <Widget>[
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFFC2C2C2),
                          Color(0xFF8C8C8C),
                          Color(0xFF5A5A5A),
                          Color(0xFF2D2D2D),
                        ],
                        stops: [0.1, 0.4, 0.7, 0.9],
                      ),
                    ),
                  ),
                  Container(
                    height: double.infinity,
                    child: SingleChildScrollView(
                      physics: AlwaysScrollableScrollPhysics(),
                      padding: EdgeInsets.symmetric(
                        horizontal: 40.0,
                        vertical: 60.0,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                          Text(
                            "World's Top 5 Most Streamed",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'ProximaNova',
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.white70,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 10.0,
                                  offset: Offset(10,10),
                                ),
                              ],
                            ),
                            child: Stack(
                              children: <Widget>[
                                Container(
                            alignment: Alignment.center,
                              child: Image.asset(
                                'assets/artists/Drake.jpg',
                                fit: BoxFit.fill,
                                  color: Color.fromRGBO(169, 169, 169, 0.75),
                                  colorBlendMode: BlendMode.modulate
                              ),
                            ),
                                Container(
                                    alignment: Alignment.center,
                                    height: 250,
                                    width: double.infinity,
                                    //padding: EdgeInsets.fromLTRB(20, 90, 20, 20),
                                    child: Text(
                                      'Drake',
                                      style: TextStyle(color: Colors.grey[800],
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22.0,
                                          shadows: [
                                            Shadow( // bottomLeft
                                                offset: Offset(-1, -1),
                                                color: Colors.white38
                                            ),
                                            Shadow( // bottomRight
                                                offset: Offset(1, -1.5),
                                                color: Colors.white38
                                            ),
                                            Shadow( // topRight
                                                offset: Offset(1, 1.5),
                                                color: Colors.white38
                                            ),
                                            Shadow( // topLeft
                                                offset: Offset(-1, 1),
                                                color: Colors.white38
                                            ),
                                          ]),
                                    )),
                              ],
                            ),
                          ),
                          Container(
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.white70,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 10.0,
                                  offset: Offset(10,10),
                                ),
                              ],
                            ),

                            child: Stack(
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                      'assets/artists/EdSheeran.jpg',
                                      fit: BoxFit.fill,
                                      color: Color.fromRGBO(169, 169, 169, 0.75),
                                      colorBlendMode: BlendMode.modulate
                                  ),
                                ),
                                Container(
                                    alignment: Alignment.center,
                                    height: 250,
                                    width: double.infinity,
                                    //padding: EdgeInsets.fromLTRB(20, 90, 20, 20),
                                    child: Text(
                                      'Ed Sheeran',
                                      style: TextStyle(color: Colors.grey[800],
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22.0,
                                          shadows: [
                                            Shadow( // bottomLeft
                                                offset: Offset(-1, -1),
                                                color: Colors.white38
                                            ),
                                            Shadow( // bottomRight
                                                offset: Offset(1, -1.5),
                                                color: Colors.white38
                                            ),
                                            Shadow( // topRight
                                                offset: Offset(1, 1.5),
                                                color: Colors.white38
                                            ),
                                            Shadow( // topLeft
                                                offset: Offset(-1, 1),
                                                color: Colors.white38
                                            ),
                                          ]),
                                    )),
                              ],
                            ),
                          ),
                          Container(
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.white70,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 10.0,
                                  offset: Offset(10,10),
                                ),
                              ],
                            ),
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                      'assets/artists/Post.jpg',
                                      fit: BoxFit.fill,
                                      color: Color.fromRGBO(169, 169, 169, 0.75),
                                      colorBlendMode: BlendMode.modulate
                                  ),
                                ),
                                Container(
                                    alignment: Alignment.center,
                                    height: 250,
                                    width: double.infinity,
                                    //padding: EdgeInsets.fromLTRB(20, 90, 20, 20),
                                    child: Text(
                                      'Post Malone',
                                      style: TextStyle(color: Colors.grey[800],
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22.0,
                                          shadows: [
                                            Shadow( // bottomLeft
                                                offset: Offset(-1, -1),
                                                color: Colors.white38
                                            ),
                                            Shadow( // bottomRight
                                                offset: Offset(1, -1.5),
                                                color: Colors.white38
                                            ),
                                            Shadow( // topRight
                                                offset: Offset(1, 1.5),
                                                color: Colors.white38
                                            ),
                                            Shadow( // topLeft
                                                offset: Offset(-1, 1),
                                                color: Colors.white38
                                            ),
                                          ]),
                                    )),
                              ],
                            ),
                          ),
                          Container(
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.white70,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 10.0,
                                  offset: Offset(10,10),
                                ),
                              ],
                            ),
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                      'assets/artists/Ariana.jpg',
                                      fit: BoxFit.fill,
                                      color: Color.fromRGBO(169, 169, 169, 0.75),
                                      colorBlendMode: BlendMode.modulate
                                  ),
                                ),
                                Container(
                                    alignment: Alignment.center,
                                    height: 250,
                                    width: double.infinity,
                                    //padding: EdgeInsets.fromLTRB(20, 90, 20, 20),
                                    child: Text(
                                      'Ariana Grande',
                                      style: TextStyle(color: Colors.grey[800],
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22.0,
                                          shadows: [
                                            Shadow( // bottomLeft
                                                offset: Offset(-1, -1),
                                                color: Colors.white38
                                            ),
                                            Shadow( // bottomRight
                                                offset: Offset(1, -1.5),
                                                color: Colors.white38
                                            ),
                                            Shadow( // topRight
                                                offset: Offset(1, 1.5),
                                                color: Colors.white38
                                            ),
                                            Shadow( // topLeft
                                                offset: Offset(-1, 1),
                                                color: Colors.white38
                                            ),
                                          ]),
                                    )),
                              ],
                            ),
                          ),
                          Container(
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.white70,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 10.0,
                                  offset: Offset(10,10),
                                ),
                              ],
                            ),
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                      'assets/artists/Eminem.jpg',
                                      fit: BoxFit.fill,
                                      color: Color.fromRGBO(169, 169, 169, 0.75),
                                      colorBlendMode: BlendMode.modulate
                                  ),
                                ),
                                Container(
                                    alignment: Alignment.center,
                                    height: 250,
                                    width: double.infinity,
                                    //padding: EdgeInsets.fromLTRB(20, 90, 20, 20),
                                    child: Text(
                                      'Eminem',
                                      style: TextStyle(color: Colors.grey[800],
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22.0,
                                          shadows: [
                                            Shadow( // bottomLeft
                                                offset: Offset(-1, -1),
                                                color: Colors.white38
                                            ),
                                            Shadow( // bottomRight
                                                offset: Offset(1, -1.5),
                                                color: Colors.white38
                                            ),
                                            Shadow( // topRight
                                                offset: Offset(1, 1.5),
                                                color: Colors.white38
                                            ),
                                            Shadow( // topLeft
                                                offset: Offset(-1, 1),
                                                color: Colors.white38
                                            ),
                                          ]),
                                    )),
                              ],
                            ),
                          ),

                          Container(
                            height: 10,
                          ),
                          Container(
                            child: InputData.buildNextBtn("< My Top 5 Artists", profilePage),
                          ),
                          Container(
                            height: 10,
                          ),
                          Container(
                            child: SignOutBtn("Sign Out", _signOut, signOutPage),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
