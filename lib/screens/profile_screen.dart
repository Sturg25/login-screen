import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_personal_app/screens/login_screen.dart';
import 'package:my_personal_app/screens/next_screen.dart';
import 'package:my_personal_app/InputData/inputData.dart';
import 'dart:async';
import '../utilities/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';


class ProfileScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ProfileScreenState();
}


class ProfileScreenState extends State<ProfileScreen> {

  Future signOutPage() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));

  }  Future profilePage() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => ProfileScreen()));
  }

  Future nextPage() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => NextScreen()));
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
                 /* FutureBuilder(
                    future: FirebaseAuth.instance.currentUser(),
                    builder: (BuildContext context, AsyncSnapshot user) {
                      if (user.connectionState == ConnectionState.waiting) {
                        return Container();
                      } else {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Welcome ",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              user.data.displayName.toString() + "!",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                fontSize: 20,
                              ),
                            )
                          ],
                        );
                      }
                    },
                  ),*/
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
                            'My Top 5 Artists',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'ProximaNova',
                              fontSize: 30.0,
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
                                'assets/artists/FooFighters.jpg',
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
                                      'Foo Fighters',
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
                                      'assets/artists/Dragonforce.jpg',
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
                                      'DragonForce',
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
                                      'assets/artists/Queen.jpg',
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
                                      'Queen',
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
                                      'assets/artists/STP.jpg',
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
                                      'Stone Temple Pilots',
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
                                      'assets/artists/MCR.jpg',
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
                                      'My Chemical Romance',
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
                              child: InputData.buildNextBtn("World's Top 5 Most Streamed >", nextPage),
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
