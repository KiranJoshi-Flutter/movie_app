import 'package:flutter/material.dart';

class ProfileSevenPage extends StatelessWidget {
  const ProfileSevenPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    Widget _photosFollowersFollowing() {
      return Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Photos',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  '5,000',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Followers',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  '5,000',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Followings',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  '5,000',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 510.0,
              width: MediaQuery.of(context).size.width,
              // color: Colors.yellow,
              child: Stack(
                children: [
                  Container(
                    height: 450.0,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.deepOrange,
                    child: Column(
                      children: [
                        Container(
                          height: 80.0,
                          width: 400.0,
                          // color: Colors.blue,
                          padding: EdgeInsets.only(
                            right: 20.0,
                          ),
                          alignment: Alignment.bottomRight,
                          child: Icon(
                            Icons.settings,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          height: 250.0,
                          width: 400.0,
                          // color: Colors.purple,
                          padding: EdgeInsets.only(
                            top: 30.0,
                            bottom: 30.0,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 60.0,
                                backgroundColor: Colors.white,
                              ),
                              Text(
                                'Sudip Thapa',
                                style: TextStyle(
                                  fontSize: 26.0,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Kathmandu',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0.0,
                    child: Container(
                      height: 120.0,
                      // width: 384.0,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(
                        left: 10.0,
                        top: 10.0,
                        right: 10.0,
                        bottom: 0.0,
                      ),
                      // color: Colors.blue,
                      child: _photosFollowersFollowing(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35.0,
            ),
            // Container(
            //   height: 400.0,
            //   width: double.infinity,
            //   // color: Colors.blue,
            //   padding: EdgeInsets.only(
            //     left: 15.0,
            //     top: 0.0,
            //     right: 15.0,
            //     bottom: 15.0,
            //   ),
            //   child: Card(
            //     child: Container(
            //       margin: EdgeInsets.only(
            //         left: 20.0,
            //         top: 10.0,
            //         right: 10.0,
            //         bottom: 10.0,
            //       ),
            //       // height: 100.0,
            //       width: double.infinity,
            //       // color: Colors.green,
            //       child: Column(
            //         children: [
            //           Container(
            //             height: 50.0,
            //             width: double.infinity,
            //             // color: Colors.purple,
            //             child: Column(
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               mainAxisAlignment: MainAxisAlignment.end,
            //               children: [
            //                 Text(
            //                   'User Information',
            //                   style: TextStyle(
            //                     fontSize: 20.0,
            //                   ),
            //                 ),
            //                 Divider(
            //                   thickness: 2.0,
            //                 )
            //               ],
            //             ),
            //           ),
            //           Expanded(
            //             child: Container(
            //               width: double.infinity,
            //               // color: Colors.yellow,
            //               margin: EdgeInsets.only(
            //                 left: 5.0,
            //                 top: 10.0,
            //                 right: 10.0,
            //               ),
            //               child: Column(
            //                 children: [
            //                   Expanded(
            //                     child: Container(
            //                       // color: Colors.red,
            //                       child: ListTile(
            //                         leading: Icon(Icons.gps_fixed),
            //                         title: Text(
            //                           'Location',
            //                           style: TextStyle(
            //                             fontSize: 20.0,
            //                           ),
            //                         ),
            //                         subtitle: Text(
            //                           'Kathmandu',
            //                           style: TextStyle(
            //                             fontSize: 16.0,
            //                           ),
            //                         ),
            //                       ),
            //                     ),
            //                   ),
            //                   Expanded(
            //                     child: Container(
            //                       // color: Colors.grey,
            //                       child: ListTile(
            //                         leading: Icon(Icons.email),
            //                         title: Text(
            //                           'Email',
            //                           style: TextStyle(
            //                             fontSize: 20.0,
            //                           ),
            //                         ),
            //                         subtitle: Text(
            //                           'sudeptech@gmail.com',
            //                           style: TextStyle(
            //                             fontSize: 16.0,
            //                           ),
            //                         ),
            //                       ),
            //                     ),
            //                   ),
            //                   Expanded(
            //                     child: Container(
            //                       // color: Colors.red,
            //                       child: ListTile(
            //                         leading: Icon(Icons.phone),
            //                         title: Text(
            //                           'Phone',
            //                           style: TextStyle(
            //                             fontSize: 20.0,
            //                           ),
            //                         ),
            //                         subtitle: Text(
            //                           '99--99876-56',
            //                           style: TextStyle(
            //                             fontSize: 16.0,
            //                             // color: Colors.grey,
            //                           ),
            //                         ),
            //                       ),
            //                     ),
            //                   ),
            //                   Expanded(
            //                     child: Container(
            //                       // color: Colors.grey,
            //                       child: ListTile(
            //                         leading: Icon(Icons.person),
            //                         title: Text('About Me'),
            //                         subtitle: Text(
            //                             'This is about me link and you can know about me in this section.'),
            //                       ),
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            UserInfo(),
          ],
        ),
      ),
    );
  }
}

class UserInfo extends StatelessWidget {
  const UserInfo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(
        left: 20.0,
        right: 20.0,
        bottom: 20.0,
      ),
      child: Container(
        padding: EdgeInsets.only(
          left: 15.0,
          top: 15.0,
          right: 15.0,
          bottom: 15.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                'User Information',
              ),
            ),
            Divider(
              color: Colors.black38,
              thickness: 1.0,
            ),
            Container(
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.gps_fixed),
                    title: Text('Location'),
                    subtitle: Text('Kathmandu'),
                  ),
                  ListTile(
                    leading: Icon(Icons.email),
                    title: Text('Email'),
                    subtitle: Text('sudeptech@gmail.com'),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text('Phone'),
                    subtitle: Text('99-9841662206'),
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("About Me"),
                    subtitle: Text(
                        "This is a about me link and you can khow about me in this section."),
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
