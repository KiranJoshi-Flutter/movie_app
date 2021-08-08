import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MovieCardScrollable extends StatelessWidget {
  final String imageLink, movieName;
  const MovieCardScrollable({Key key, this.imageLink, this.movieName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            height: 250.0,
            width: 200.0,
            child: Image.network(
              '$imageLink',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              Text(
                '$movieName',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              Text(
                'Jun 27, 2008 - US',
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
