import 'package:flutter/material.dart';
import 'package:slot/global/helper.dart' as Global;

class Notif extends StatefulWidget {
  const Notif({super.key});

  @override
  State<Notif> createState() => _NotifState();
}

class _NotifState extends State<Notif> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Padding(
          padding:
              EdgeInsets.only(left: MediaQuery.of(context).size.width * .15),
          child: Global.customText(
              text: 'Notifications', type: 'header', customCol: Colors.white),
        ),
        backgroundColor: Global.priCol,
      ),
      body: Center(
        child: Global.customText(text: 'Notificationss', type: 'header'),
      ),
    );
  }
}
