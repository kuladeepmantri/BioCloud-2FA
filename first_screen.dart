

import 'package:flutter/material.dart';
import 'package:miniprojectgitam/login_page.dart';
import 'package:miniprojectgitam/sign_in.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.black, Colors.black,
          ]),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
          Row(
          mainAxisSize: MainAxisSize.max,
            children: <Widget>[


              SizedBox(width: 20.0, height: 150.0),
              RotateAnimatedTextKit(
                  onTap: () {
                    print("Tap Event");
                  },
                  text: ["namaste", "hola", "bonjour"],
                  textStyle: TextStyle(fontSize: 40.0, fontFamily: "Horizon", color:Colors.white),
                  textAlign: TextAlign.center
              ),
            ],
          ),
              CircleAvatar(
                backgroundImage: NetworkImage(
                  imageUrl,
                ),
                radius: 90,
                backgroundColor: Colors.transparent,
              ),
              SizedBox(height: 50),
              Text(
                'NAME',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),

              Text(
                name,
                style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 48, 255, 24),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'EMAIL',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                email,
                style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 238, 69, 64),
                    fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 40),

              RaisedButton(
                onPressed: () {
                  signOutGoogle();
                  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) {return LoginPage();}), ModalRoute.withName('/'));
                },
                color: Colors.deepPurple,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Sign Out',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),

              )
            ],
          ),
        ),
      ),
    );
  }
}
