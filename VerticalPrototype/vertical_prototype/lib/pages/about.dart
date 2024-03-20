// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vertical_prototype/pages/mainpage.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor:Colors.grey[300],
        title: Text('About Us', style: GoogleFonts.amaranth(fontSize:25)),
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
            SizedBox(height: 10,),
            Text(
              "The L.EIC MarTechPlace project was developed for the Software Engineering course in the 2023/24 academic year of the 2nd year of L.EIC at FEUP.",
              style: GoogleFonts.amaranth(
                fontSize : 25,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 25,),
            Text(
              "Our vision is to connect Porto Academic Community through technology reuse for a sustainable future.",
              style: GoogleFonts.amaranth(
                fontSize : 25,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40,),
            Container(
              height: 2, // Altura da linha
              color: Colors.black,
              width: double.infinity, // Largura total da tela
            ),
            SizedBox(height: 50,),
            Text(
              "Abecassis Devesse \n Allan Yoshioka \n Amanda Tartarotti \n Leonardo Garcia \n Marcel Medeiros \n Ricardo Parreira",
              style: GoogleFonts.amaranth(
                fontSize : 25,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

        ]),
        ),
      ),

    );
  }
}
