import 'package:flutter/material.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({Key key}) : super(key: key);

  Row _buildHeader() {
    return Row(
      children: [
        CircleAvatar(
          radius: 60.0,
          backgroundColor: Colors.grey,
          child: CircleAvatar(
            radius: 55.0,
          ),
        ),
        Column(
          children: [
            Text('Suyash Shreshtha'),
            Text('Flutter Developer'),
            Row(
              children: [
                Icon(Icons.add),
                Text('Tahachal, Kathmandu'),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildTitle({String title}) {
    return Container(
      padding: EdgeInsets.only(left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title.toUpperCase(),
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(
            color: Colors.black54,
            thickness: 1.0,
          ),
        ],
      ),
    );
  }

  Row _buildSkillRow() {
    return Row(
      children: [
        SizedBox(
          width: 16.0,
        ),
        Text(
          'Flutter',
        ),
        SizedBox(
          width: 10.0,
        ),
        Expanded(
          child: LinearProgressIndicator(
            valueColor: AlwaysStoppedAnimation(Colors.red),
            backgroundColor: Colors.red[100],
            value: 0.75,
          ),
        ),
        SizedBox(
          width: 16.0,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          Icon(
            Icons.add,
            color: Colors.black54,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.black54,
          ),
        ],
      ),
      body: Column(
        children: [
          _buildHeader(),
          Container(
            padding: EdgeInsets.all(16.0),
            child: Container(
              color: Colors.grey.shade200,
              alignment: Alignment.center,
              padding: EdgeInsets.all(16.0),
              child: Text(
                  'Pursuing Bachelors in IT from Islington College. Tech Enthusiast. Currently studying Flutter and making some demo mobile apps.'),
            ),
          ),
          _buildTitle(title: 'skills'),
          _buildSkillRow(),
        ],
      ),
    );
  }
}
