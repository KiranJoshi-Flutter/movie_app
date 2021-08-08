class Movie {
  String backdropPath;
  String title;
  int id;
  String posterPath;
  String overview;

  Movie({
    this.backdropPath,
    this.title,
    this.id,
    this.posterPath,
    this.overview,
  });

  static Movie fromMap(Map<String, dynamic> data) {
    return Movie(
      title: data['title'],
      id: data['id'],
      posterPath: data['poster_path'],
      overview: data['overview'],
      backdropPath: data['backdrop_path'],
    );
  }
}
