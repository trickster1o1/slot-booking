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
      appBar: Global.appHeader('Notification'),
      body: Center(
        child: Global.customText(text: 'Notificationss', type: 'header'),
      ),
    );
  }
}
