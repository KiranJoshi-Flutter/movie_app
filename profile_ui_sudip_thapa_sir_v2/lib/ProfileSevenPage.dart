import 'package:flutter/material.dart';

class ProfileSevenPage extends StatelessWidget {
  const ProfileSevenPage({Key key}) : super(key: key);

  Widget _userInfo() {
    return Container(
      margin: EdgeInsets.only(
        top: 420.0,
      ),
      padding: EdgeInsets.only(
        left: 15.0,
        right: 15.0,
      ),
      height: 400.0,
      width: 400.0,
      // color: Colors.grey,
      child: Card(
        child: Column(
          children: [
            Container(
              height: 60.0,
              width: 400.0,
              padding: EdgeInsets.only(
                left: 10.0,
                right: 10.0,
              ),
              // color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'User Information',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  Divider(
                    thickness: 1.0,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: 400.0,
                // color: Colors.pink,
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.add),
                      title: Text('Location'),
                      subtitle: Text('Kathmandu'),
                    ),
                    ListTile(
                      leading: Icon(Icons.add),
                      title: Text('Location'),
                      subtitle: Text('Kathmandu'),
                    ),
                    ListTile(
                      leading: Icon(Icons.add),
                      title: Text('Location'),
                      subtitle: Text('Kathmandu'),
                    ),
                    ListTile(
                      leading: Icon(Icons.add),
                      title: Text('Location'),
                      subtitle: Text('Kathmandu'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: 330,
                width: double.infinity,
                color: Colors.deepOrange,
              ),
              Positioned(
                top: 10.0,
                right: 30.0,
                child: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
              ),
              Positioned(
                top: 60.0,
                child: Container(
                  height: 180.0,
                  width: 400.0,
                  // color: Colors.blue,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 55.0,
                        backgroundColor: Colors.white,
                        backgroundImage: NetworkImage(
                          'https://cdn.dribbble.com/users/1577045/screenshots/4914645/dribble_pic.png?compress=1&resize=800x600',
                        ),
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        'Sudip Thapa',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        'Kathmandu',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 300.0),
                height: 90.0,
                width: 400.0,
                // color: Colors.purple,
                padding: EdgeInsets.only(
                  left: 10.0,
                  right: 10.0,
                ),
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Photos',
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            '5,000',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 16,
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
                              color: Colors.black54,
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            '5,000',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 16,
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
                              color: Colors.black54,
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            '5,000',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              _userInfo(),
            ],
          ),
        ),
      ),
    );
  }
}
