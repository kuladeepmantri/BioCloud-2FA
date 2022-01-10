
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
        image: DecorationImage(
        image: AssetImage("assets/images/bulb.jpg"),
        fit: BoxFit.cover,
        )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
          Row(
          mainAxisSize: MainAxisSize.min,
            children: <Widget>[


              SizedBox(width: 0.0, height: 150.0),
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
              SizedBox(height: 80),
              Text(
                'NAME',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            SizedBox(height: 8),
              Text(
                name,
                style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Color.fromARGB(255, 255,255, 255),
                    fontFamily: "Agne",
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 20),
              Text(
                'EMAIL',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              SizedBox(height: 8),
              Text(
                email,
                style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontFamily: "Agne",
                    fontWeight: FontWeight.w500),
              ),

              SizedBox(height: 40),

              RaisedButton(
                onPressed: () {
                  signOutGoogle();
                  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) {return LoginPage();}), ModalRoute.withName('/'));
                },

                color: Colors.red,
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
