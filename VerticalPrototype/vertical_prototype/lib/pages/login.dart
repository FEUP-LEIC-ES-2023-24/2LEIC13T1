// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vertical_prototype/pages/forgot_password_page.dart';
import 'package:vertical_prototype/pages/mainpage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor:Colors.grey[300],
        title: Text('Sign In', style: GoogleFonts.amaranth(fontSize:25)),
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
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return ForgotPasswordPage();
                      },
                      ),
                      );
                    },
                  ),
                  Text(
                    'Forgot password?',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),

                  ),
                ],
              ),
            ),
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
                    "Sign In",
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
