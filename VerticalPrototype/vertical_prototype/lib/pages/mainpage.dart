import 'package:flutter/material.dart';
import 'package:vertical_prototype/pages/about.dart';
import 'login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vertical_prototype/pages/register.dart';


class MainPage extends StatelessWidget {
  const MainPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Text(
                "MARTECHPLACE MAIN PAGE",
                style: GoogleFonts.amaranth(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,

                ),
              ),

              SizedBox(height: 70),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Container(
                    height: 150.0,
                    width: 300.0, // Aumentando a largura do container
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Center(
                      child: Text(
                        "Go To Login Page",
                        style: GoogleFonts.amaranth(
                          textStyle: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40,),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Register()),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Container(
                    height: 150.0,
                    width: 300.0, // Aumentando a largura do container
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Center(
                      child: Text(
                        "Register",
                        style: GoogleFonts.amaranth(
                          textStyle: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40,),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutUs()),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Container(
                    height: 150.0,
                    width: 300.0, // Aumentando a largura do container
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Center(
                      child: Text(
                        "About Us",
                        style: GoogleFonts.amaranth(
                          textStyle: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
