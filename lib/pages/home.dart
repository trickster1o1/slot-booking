import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slot/global/helper.dart' as Global;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Global.customDrawer(),
      appBar: Global.customBar(),
      body: SizedBox(
        width: MediaQuery.of(context).size.width * 1,
        child: Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * .4,
              child: Image.asset(
                "assets/homebg.png",
                fit: BoxFit.cover,
                // alignment: Alignment.topCenter,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .38,
                  ),
                  customBtn('I need to charge', '/booking'),
                  SizedBox(height: 32.0),
                  customBtn('Nearby Station', '/login'),
                  SizedBox(height: 32.0),
                  customBtn('Manage Booking', '/login'),
                  SizedBox(height: 32.0),
                  customBtn('Plan my trip', '/login'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  SizedBox customBtn(text, link) {
    return SizedBox(
      height: 55.0,
      width: MediaQuery.sizeOf(context).width * .85,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Global.priCol,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        onPressed: () {
          Navigator.pushNamed(context, link);
        },
        child: Text(
          text,
          style: GoogleFonts.inter(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}
