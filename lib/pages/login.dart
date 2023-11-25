import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool passwordVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
              16, MediaQuery.sizeOf(context).height * .2, 16, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome To Slot Booking',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.bold,
                  height: 2.0,
                  letterSpacing: -0.5,
                  color: Color.fromARGB(255, 34, 159, 164),
                  fontSize: 22.0,
                ),
              ),
              Text(
                'Please Login to continue with the app',
                style: GoogleFonts.inter(
                  fontSize: 16.0,
                  color: Color.fromARGB(255, 89, 85, 85),
                ),
              ),
              SizedBox(
                height: 64.0,
              ),
              Text(
                'Phone Number',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: 'Phone Number',
                ),
              ),
              SizedBox(height: 24.0),
              Text(
                'Password',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                obscureText: passwordVisible,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(passwordVisible
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: () {
                      setState(
                        () {
                          passwordVisible = !passwordVisible;
                        },
                      );
                    },
                  ),
                  hintText: 'Password',
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              SizedBox(
                height: 56.0,
                width: MediaQuery.sizeOf(context).width * 1,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 34, 159, 164),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Sign In',
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25.0),
              Center(
                child: Text(
                  'Register Now',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 34, 159, 164),
                    fontSize: 20.0,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Center(
                child: Text(
                  'Lost your login Password?',
                  style: GoogleFonts.inter(
                    color: Color.fromARGB(255, 89, 85, 85),
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Center(
                child: Text(
                  'Recover Password',
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.underline,
                    color: Color.fromARGB(255, 34, 159, 164),
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