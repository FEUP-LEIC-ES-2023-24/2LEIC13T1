// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vertical_prototype/pages/mainpage.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor:Colors.grey[300],
        title: Text('Register', style: GoogleFonts.amaranth(fontSize:25)),
        // Adicionando um botão de voltar no canto superior esquerdo
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(children: [
            SizedBox(height: 30),
            //Icon
            Icon(
              Icons.lock,
              size: 50,
            ),


            SizedBox(height: 30,),
            //some text
            Text(
              'Register yourself!',
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
                  hintText: "Full Name",
                  hintStyle: TextStyle(color: Colors.grey[500]),
                ),
              ),
            ),
            SizedBox(height: 25,),
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
            //forgot password?
            SizedBox(height: 25,),
            //sign in button
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainPage()),
                );
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  height: 45.0,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(5.0))
                  ),
                  child: Center(child: Text(
                    "Register",
                    style: GoogleFonts.amaranth(textStyle: TextStyle(fontSize: 20, color: Colors.white)
                    ),
                  ),),
                ),
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
                  'assets/unnamed.png',
                  height: 50,
                )
              ],)
          ]),
        ),
      ),

    );
  }
}
