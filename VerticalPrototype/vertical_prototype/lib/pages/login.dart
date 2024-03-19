import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
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
              'Hey! We are Martechplace, You are welcome hre!',
              style: TextStyle(
                fontSize: 16,
              ) ,
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
                  hintText: "Username"
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
                  hintText: "Password"
                ),
              ),
            )          
            //forgot password?
          
            //sign in button
          
            // or continue with: google
          ]),
        ),
      ),

    );
  }
}
