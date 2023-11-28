import 'package:flutter/material.dart';
import 'package:slot/global/helper.dart' as Global;

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Global.appHeader('Profile'),
      body: SingleChildScrollView(
        child: Center(child: Text('Profile')),
      ),
    );
  }
}
