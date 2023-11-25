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
      body: Container(
          alignment: Alignment.topCenter,
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.width * 1,
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //     image: AssetImage("assets/homebg.png"),
          //     // fit: BoxFit.contain,
          //     // fit: BoxFit.scaleDown,
          //   ),
          // ),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 1,
            child: Stack(
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height * .4,
                  child: Positioned.fill(
                    child: Image.asset(
                      "assets/homebg.png",
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
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
                      customBtn('I need to charge'),
                      SizedBox(height: 32.0),
                      customBtn('Nearby Station'),
                      SizedBox(height: 32.0),
                      customBtn('Manage Booking'),
                      SizedBox(height: 32.0),
                      customBtn('Plan my trip'),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }

  SizedBox customBtn(text) {
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
          Navigator.pushNamed(context, '/login');
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
