import 'dart:convert';

import 'package:http/http.dart';
import 'package:movie_app/constants/keys.dart';
import 'package:movie_app/models/movie.dart';

class ApiService {
  Future<List<Movie>> getTrendingMovies() async {
    Response response = await get(
      Uri.parse(
          '$baseUrl/trending/movie/week?api_key=90c97e66f1b239afeedcc20a54f56f95'),
    );
    var result = jsonDecode(response.body);
    List res = result['results'];
    // print(res);
    List<Movie> movies = res.map((movie) => Movie.fromMap(movie)).toList();
    print(movies);
    return movies;
  }
}
