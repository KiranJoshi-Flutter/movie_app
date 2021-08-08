import 'package:flutter/material.dart';
import 'package:movie_app/HomeScreenCheck.dart';
import 'package:movie_app/screens/MovieScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      // home: MovieScreen(),
      home: HomeScreenCheck(),
    );
  }
}
