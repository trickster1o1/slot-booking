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
        child: Container(
          padding: EdgeInsets.all(35.0),
          child: Column(
            children: [
              ClipOval(
                child: SizedBox.fromSize(
                  size: Size.fromRadius(48), // Image radius
                  child: Image.network(
                      'https://s3-alpha-sig.figma.com/img/2865/a97d/2393f0e4f1d068499c321c5d7ea1d990?Expires=1702252800&Signature=Od6Z5Zlw6-USGr641mJ681CfV9DQyUuUcGaM-UJmuqyXPQY~WGQSBvn9GpcZIp~Z2ybt2xuhtiajhctnN0HM7InoYDhi97KknWcRWPy1dPLaoQc2CAhYpKRMg56jltLYTAYrCiRMMrFtvpScivlkDKhWYJvgi4EGJmGsB36vn5g2UhmZ1mmYbNdlk66ZZxYUkItZDGspL9E747dpKLI~L3p5OnbI7L8Frg38b6PsQ4Ar5s-cKd8keVQeciBEwgY~EHe7zCf2LUxEgbqQUOciTYdGC9U3kDdsARSiFD0WkUjX-VJHXSoP6eVtxtVNnoZF3qbL9MWrDSfo-gdx8MWCCw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4',
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                padding: EdgeInsets.all(28.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                            width: 90.0,
                            child: Global.customText(
                                text: 'Name', type: 'header')),
                        Global.customText(text: 'Ram Bhandari', type: 'header'),
                      ],
                    ),
                    SizedBox(height: 15.0),
                    Row(
                      children: [
                        SizedBox(
                            width: 90.0,
                            child: Global.customText(
                                text: 'Email', type: 'header')),
                        Global.customText(text: 'ram@mail.com', type: 'header'),
                      ],
                    ),
                    SizedBox(height: 15.0),
                    Row(
                      children: [
                        SizedBox(
                            width: 90.0,
                            child: Global.customText(
                                text: 'Phone No', type: 'header')),
                        Global.customText(text: '9810221133', type: 'header'),
                      ],
                    ),
                    SizedBox(height: 15.0),
                    Row(
                      children: [
                        SizedBox(
                            width: 90.0,
                            child: Global.customText(
                                text: 'Address', type: 'header')),
                        Global.customText(
                            text: 'Bagbazar, Kathmandu', type: 'header'),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * .9,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(186, 186, 186, 0.77),
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                padding: EdgeInsets.all(28.0),
                child: Column(
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width * .9,
                        child: Global.customText(
                            text: 'Vehicle Details', type: 'header')),
                    SizedBox(height: 15.0),
                    Row(
                      children: [
                        SizedBox(
                            width: 135.0,
                            child: Global.customText(
                                text: 'Vehicle no.', type: 'normal')),
                        Global.customText(text: '12345', type: 'normal'),
                      ],
                    ),
                    SizedBox(height: 15.0),
                    Row(
                      children: [
                        SizedBox(
                            width: 135.0,
                            child: Global.customText(
                                text: 'Connector Type', type: 'normal')),
                        Global.customText(text: 'Type 1', type: 'normal'),
                      ],
                    ),
                    SizedBox(height: 15.0),
                    Row(
                      children: [
                        SizedBox(
                            width: 135.0,
                            child: Global.customText(
                                text: 'Vehicle', type: 'normal')),
                        Global.customText(text: 'Tata Tiago', type: 'normal'),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
