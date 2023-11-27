import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Text customText(
    {text, type, customCol = const Color.fromARGB(255, 0, 0, 0), size = 16.0}) {
  return Text(
    text,
    style: GoogleFonts.inter(
      fontWeight: type == 'header' ? FontWeight.bold : FontWeight.normal,
      color: customCol,
      fontSize: size,
    ),
  );
}

AppBar customBar(context) {
  return AppBar(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/notifications');
            },
            child: Icon(Icons.notifications_outlined)),
      ],
    ),
  );
}

Drawer customDrawer(context) {
  return Drawer(
    child: ListView(
      children: [
        SizedBox(height: 85.0),
        Container(
          padding: EdgeInsets.only(right: 10.0),
          alignment: Alignment.topRight,
          child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: customText(text: 'x', type: 'normal', size: 18.0)),
        ),
        listCont('Home', Icons.home_outlined),
        listCont('Profile', Icons.person_2_outlined),
        listCont('Setting', Icons.settings_outlined),
        listCont('Help', Icons.help_outline),
        listCont('Contact Us', Icons.phone_outlined),
      ],
    ),
  );
}

Container listCont(text, icon) {
  return Container(
    decoration: BoxDecoration(
        border: Border(
            bottom:
                BorderSide(color: Color.fromRGBO(0, 0, 0, 0.20), width: 1.0))),
    child: ListTile(
      leading: Icon(icon),
      title: Text(text),
      onTap: null,
    ),
  );
}

Color priCol = Color.fromRGBO(37, 95, 219, 1);
