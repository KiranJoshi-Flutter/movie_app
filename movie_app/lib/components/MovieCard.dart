import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/widgets/MovieCardScrollable.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;
  const MovieCard({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 200.0,
      // child: Text(movie.title),
      child: MovieCardScrollable(
        imageLink: 'https://image.tmdb.org/t/p/original${movie.backdropPath}',
        movieName: movie.title,
      ),
    );
  }
}
