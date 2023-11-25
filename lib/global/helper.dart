import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Text customText({text, type, customCol = const Color.fromARGB(255, 0, 0, 0)}) {
  return Text(
    text,
    style: GoogleFonts.inter(
      fontWeight: type == 'header' ? FontWeight.bold : FontWeight.normal,
      color: customCol,
    ),
  );
}

AppBar customBar() {
  return AppBar(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Icon(Icons.notifications),
      ],
    ),
  );
}

Drawer customDrawer() {
  return Drawer(
    child: ListView(
      children: [
        ListTile(
          leading: Icon(Icons.person),
          title: Text('Profile'),
          onTap: null,
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Setting'),
          onTap: null,
        ),
        ListTile(
          leading: Icon(Icons.help),
          title: Text('Help'),
          onTap: null,
        ),
        ListTile(
          leading: Icon(Icons.phone),
          title: Text('Contact Us'),
          onTap: null,
        ),
      ],
    ),
  );
}

Color priCol = Color.fromRGBO(37, 95, 219, 1);
