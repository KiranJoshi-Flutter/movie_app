import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 470.0,
              width: double.infinity,
              // color: Colors.purple,
              child: Stack(
                children: [
                  Container(
                    height: 410.0,
                    width: double.infinity,
                    color: Colors.deepOrange,
                    padding: EdgeInsets.only(top: 45.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.settings),
                          ],
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        CircleAvatar(),
                        Text('Sudip Thapa'),
                        Text('Kathmandu'),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 380.0),
                    height: 200.0,
                    width: double.infinity,
                    // color: Colors.grey,
                    child: Card(
                      margin: EdgeInsets.only(
                        left: 15.0,
                        right: 15.0,
                      ),
                      child: Text('Photos'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Card(
              margin: EdgeInsets.only(
                left: 15.0,
                right: 15.0,
                bottom: 15.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('User Information'),
                  Divider(
                    thickness: 1.0,
                  ),
                  Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.gps_fixed),
                        title: Text('Location'),
                        subtitle: Text('Kathmandu'),
                      ),
                      ListTile(
                        leading: Icon(Icons.mail),
                        title: Text('Email'),
                        subtitle: Text('sudeptech@gmail.com'),
                      ),
                      ListTile(
                        leading: Icon(Icons.phone),
                        title: Text('Phone'),
                        subtitle: Text('+977-9841662206'),
                      ),
                      ListTile(
                        leading: Icon(Icons.person),
                        title: Text('About Me'),
                        subtitle: Text(
                            'This is about me link and you can know about me in this section.'),
                      ),
                      ListTile(
                        leading: Icon(Icons.person),
                        title: Text('About Me'),
                        subtitle: Text(
                            'This is about me link and you can know about me in this section.'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
