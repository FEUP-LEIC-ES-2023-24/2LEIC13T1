// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(226, 220, 233, 241),
      body: SafeArea(
        child: Center(
          child: Column(children: [
            SizedBox(height: 70),
            //Icon
            Icon(
              Icons.lock,
              size: 100,
            ),


            SizedBox(height: 70,),
            //some text
            Text(
              'Hey! We are Martechplace, You are welcome here!',
              style: GoogleFonts.amaranth(  
                fontSize: 25,

              ),
              textAlign: TextAlign.center,
            ),
            
            SizedBox(height: 50,),
            //username textfield
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                  fillColor: Colors.white, filled:true,
                  hintText: "Username",
                  hintStyle: TextStyle(color: Colors.grey[500]),
                ),
              ),
            ),

            SizedBox(height: 25,),
            //password textfield
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                  fillColor: Colors.white, filled:true,
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.grey[500]),
                ),
                obscureText: true,
              ),
            ),

            SizedBox(height: 10,),
            //forgot password?
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot password?',
                    style: GoogleFonts.amaranth(  
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25,),
            //sign in button
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                height: 35.0,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(5.0))
                ),
                child: Center(child: Text(
                  "Sign In",
                  style: GoogleFonts.amaranth(textStyle: TextStyle(fontSize: 20, color: Colors.white)
                  ),
                ),),
              ),
            ),
            SizedBox(height: 25.0),
            // or continue with:

            Text(
              "Or continue with:",
              style: GoogleFonts.amaranth(
                fontSize: 15,
              ),
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Image.asset(
                '../lib/images/unnamed.png',
                height: 50,
              )
            ],)
          ]),
        ),
      ),

    );
  }
}
