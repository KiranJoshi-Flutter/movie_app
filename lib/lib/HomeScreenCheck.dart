import 'package:flutter/material.dart';
import 'package:movie_app/components/MovieCard.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/services/api_service.dart';

class HomeScreenCheck extends StatelessWidget {
  const HomeScreenCheck({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ApiService apiService = ApiService();

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: 300.0,
        child: FutureBuilder(
          future: apiService.getTrendingMovies(),
          builder: (context, snap) {
            if (snap.hasData) {
              return ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  Movie movie = snap.data[index]; // movie.
                  return MovieCard(movie: movie);
                },
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
