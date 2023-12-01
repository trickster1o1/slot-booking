import 'package:flutter/material.dart';
import 'package:slot/global/helper.dart' as Global;
import 'package:google_fonts/google_fonts.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  List<String> cities = <String>['Kathmandu', 'Pokhara', 'Bhaktapur'];
  List<String> highWays = <String>['k-bp6', 'Mahendra', 'Dolpa H'];
  String citiVal = 'Kathmandu';
  String highVal = 'k-bp6';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Global.customDrawer(context),
      appBar: Global.customBar(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        width: MediaQuery.of(context).size.width * .9,
        height: 56.0,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Global.priCol,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/book-now');
          },
          child: Global.customText(
              text: 'Continue', type: 'header', customCol: Colors.white),
        ),
      ),
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
              child: DropdownMenu<String>(
                width: MediaQuery.of(context).size.width * .9,
                initialSelection: cities.first,
                onSelected: (String? value) {
                  // This is called when the user selects an item.
                  setState(() {
                    citiVal = value!;
                  });
                },
                dropdownMenuEntries:
                    cities.map<DropdownMenuEntry<String>>((String value) {
                  return DropdownMenuEntry<String>(value: value, label: value);
                }).toList(),
              ),
            ),
            SizedBox(height: 21.0),
            Center(
              child: DropdownMenu<String>(
                width: MediaQuery.of(context).size.width * .9,
                initialSelection: highWays.first,
                onSelected: (String? value) {
                  // This is called when the user selects an item.
                  setState(() {
                    citiVal = value!;
                  });
                },
                dropdownMenuEntries:
                    highWays.map<DropdownMenuEntry<String>>((String value) {
                  return DropdownMenuEntry<String>(value: value, label: value);
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
