import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slot/global/helper.dart' as Global;

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool passwordVisible = true;
  bool rpasswordVisible = true;
  String selected = 'male';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
            padding: EdgeInsets.fromLTRB(
                MediaQuery.of(context).size.width * .15, 0, 0, 0),
            child: Text('Register Now')),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16, 15, 16, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SizedBox(
              //   height: 20.0,
              // ),
              // Global.customText({'Full Name', 'header'}),
              Global.customText(text: 'Full Name', type: 'header'),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                        width: 1, color: Color.fromARGB(255, 158, 158, 158)),
                  ),
                  hintText: 'Full Name',
                ),
              ),
              SizedBox(height: 24.0),
              Global.customText(text: 'Phone Number', type: 'header'),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                        width: 1, color: Color.fromARGB(255, 158, 158, 158)),
                  ),
                  hintText: 'Phone Number',
                ),
              ),
              SizedBox(height: 24.0),
              Row(
                children: [
                  Global.customText(text: 'Gender', type: 'header'),
                  SizedBox(width: 15.0),
                  InkWell(
                    onTap: () {
                      setState(() {
                        selected = 'male';
                      });
                    },
                    child: Container(
                        padding: EdgeInsets.fromLTRB(12.0, 6.0, 12.0, 6.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: selected == 'male'
                                ? Color.fromARGB(255, 37, 95, 219)
                                : Color.fromARGB(255, 158, 158, 158)),
                        child: Global.customText(
                            text: 'Male',
                            type: 'header',
                            customCol: Color.fromARGB(255, 255, 255, 255))),
                  ),
                  SizedBox(width: 15.0),
                  InkWell(
                    onTap: () {
                      setState(() {
                        selected = 'female';
                      });
                    },
                    child: Container(
                        padding: EdgeInsets.fromLTRB(12.0, 6.0, 12.0, 6.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: selected == 'female'
                                ? Color.fromARGB(255, 37, 95, 219)
                                : Color.fromARGB(255, 158, 158, 158)),
                        child: Global.customText(
                            text: 'Female',
                            type: 'header',
                            customCol: Color.fromARGB(255, 255, 255, 255))),
                  ),
                  SizedBox(width: 15.0),
                  InkWell(
                    onTap: () {
                      setState(() {
                        selected = 'others';
                      });
                    },
                    child: Container(
                        padding: EdgeInsets.fromLTRB(12.0, 6.0, 12.0, 6.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: selected == 'others'
                                ? Color.fromARGB(255, 37, 95, 219)
                                : Color.fromARGB(255, 158, 158, 158)),
                        child: Global.customText(
                            text: 'Others',
                            type: 'header',
                            customCol: Color.fromARGB(255, 255, 255, 255))),
                  ),
                ],
              ),
              SizedBox(height: 24.0),
              Global.customText(
                text: 'Password',
                type: 'header',
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                obscureText: passwordVisible,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                        width: 1, color: Color.fromARGB(255, 158, 158, 158)),
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
              SizedBox(height: 24.0),
              Global.customText(
                text: 'Confirm Password',
                type: 'header',
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                obscureText: passwordVisible,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                        width: 1, color: Color.fromARGB(255, 158, 158, 158)),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(passwordVisible
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: () {
                      setState(
                        () {
                          rpasswordVisible = !rpasswordVisible;
                        },
                      );
                    },
                  ),
                  hintText: 'Confirm Password',
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
                    backgroundColor: Global.priCol,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Proceed',
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25.0),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Center(
                  child: Text(
                    'Already have an account? Sign In',
                    style: GoogleFonts.inter(
                      color: Color.fromARGB(255, 89, 85, 85),
                      fontSize: 16,
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
