
import 'package:miniprojectgitam/Animations/FadeAnimation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:animated_text_kit/animated_text_kit.dart';


import 'package:flutter/material.dart';
import 'package:miniprojectgitam/sign_in.dart';

import 'first_screen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/bro.png"),
                  fit: BoxFit.cover,
                )
            ),
            padding: EdgeInsets.all(30),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  SizedBox(
                      width: 500.0,
                      height: 200.0,
                      child: TypewriterAnimatedTextKit(
                          onTap: (){
                            print("Tap Event");

                          },
                          text: [
                            "Authorization level_1",
                            "Encrypted UID",

                            "Tap to Proceed ",
                          ],
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 35.0,
                              fontStyle: FontStyle.italic,

                              fontWeight: FontWeight.bold,
                              fontFamily: "Agne"
                          ),

                          textAlign: TextAlign.start,
                          alignment: AlignmentDirectional.topCenter
                      )
                  ),
                  _signInButton(),

                ]
            )
        )
    );
  }

  Widget _signInButton() {
    return OutlineButton(

      splashColor: Colors.grey,
      onPressed: () {
        signInWithGoogle().then((result) {
          if (result != null) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  // print("Working bruh");
                  return FirstScreen();
                },
              ),
            );
          }
        });
      },
      child: Padding(
          padding: EdgeInsetsDirectional.only(bottom: 0),
          //     child: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          // highlightElevation: 0,
          // borderSide: BorderSide(color: Colors.grey),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),

            child: Row(

              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[

                Image(image: AssetImage("assets/images/google_logo.png"), height: 35.0),
                Padding(
                  padding: const EdgeInsets.all(40),
                  child: Text(
                    'Firebase Authorization',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.orange,
                    ),
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}
