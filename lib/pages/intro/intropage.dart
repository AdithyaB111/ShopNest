import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopnest/pages/auth/login.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [

          //image

          Padding(
            padding: const EdgeInsets.only(left: 80.0, right: 80.0, top: 160.0, bottom: 40.0),
            child: Image.asset('assets/intro/intro1.png'),
          ),

          //title

           Padding(
            padding:  EdgeInsets.all(24.0),
            child: Text('We Give You Amazing Shoping Experince',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 36,
              fontWeight: FontWeight.bold
            ),
            ),
          ),

          //subtitle

          const Text('Get Your Discount On Today',
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold
          ),),


          // get start Button
          Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> LoginPage()));
            },
            child: Container(
              padding: EdgeInsets.only(top: 10.0,bottom: 10.0,left: 25.0,right: 25.0),
              decoration: BoxDecoration(
                color: Colors.black,
                 borderRadius: BorderRadius.circular(12)
              ),
              child: Text('Get Start',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),),
            ),
          ),

          Spacer(),




        ],
      ),
    );
  }
}