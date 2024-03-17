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
              'Hey! We are Martechplace, You are welcome here!',
              style: TextStyle(
                fontSize: 16,
              ) ,
            ),
            //username textfield
          
            //password textfield
          
            //forgot password?
          
            //sign in button
          
            // or continue with: google
          ]),
        ),
      ),

    );
  }
}
