import 'package:flutter/material.dart';
import 'package:slot/pages/booking.dart';
import 'package:slot/pages/home.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:slot/pages/login.dart';
import 'package:slot/pages/signup.dart';

void main() {
  runApp(MaterialApp(
      // theme: ThemeData(
      //   fontFamily: GoogleFonts.inter().fontFamily,
      // ),
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/login': (context) => Login(),
        '/signup': (context) => SignUp(),
        '/booking': (context) => Booking(),
      }));
}
