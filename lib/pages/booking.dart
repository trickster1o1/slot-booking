import 'package:flutter/material.dart';
import 'package:slot/global/helper.dart' as Global;
import 'package:google_fonts/google_fonts.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Global.customDrawer(),
      appBar: Global.customBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 21.0),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * .9,
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                          width: 1, color: Color.fromARGB(255, 158, 158, 158)),
                    ),
                    hintText: 'Search on Map',
                  ),
                ),
              ),
            ),
            SizedBox(height: 51.0),
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                'Select Location',
                style: GoogleFonts.inter(
                  color: Color.fromRGBO(89, 85, 85, 1),
                  fontSize: 20.0,
                ),
              ),
            ),
            SizedBox(height: 21.0),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * .9,
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                          width: 1, color: Color.fromARGB(255, 158, 158, 158)),
                    ),
                    hintText: 'City',
                  ),
                ),
              ),
            ),
            SizedBox(height: 21.0),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * .9,
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                          width: 1, color: Color.fromARGB(255, 158, 158, 158)),
                    ),
                    hintText: 'Highway',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
