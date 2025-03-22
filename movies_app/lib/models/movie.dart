import 'dart:convert';

class Movie {
  Movie({
    required this.adult,
    this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    this.posterPath,
    this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  bool adult;
  String? backdropPath;
  List<int> genreIds;
  int id;
  String originalLanguage;
  String originalTitle;
  String overview;
  double popularity;
  String? posterPath;
  String? releaseDate;
  String title;
  bool video;
  double voteAverage;
  int voteCount;

  get fullPosterImg {
    if (this.posterPath != null)
      return 'https://image.tmdb.org/t/p/w500${this.posterPath}';
    return 'https://www.google.com.co/url?sa=i&url=https%3A%2F%2Fwww.legrand.com.kh%2Fen%2Fcatalog%2Fproducts%2Fcircuit-breaker-dmx-sp-4000-4-poles-draw-out-version-and-electronic-protection-unit-670277&psig=AOvVaw3sJitbva3qSYvicMpdkDQK&ust=1738352748424000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCOi47eKanosDFQAAAAAdAAAAABAE';
  }

  get fullBackdropPath {
    if (this.posterPath != null)
      return 'https://image.tmdb.org/t/p/w500${this.backdropPath}';
    return 'https://www.google.com.co/url?sa=i&url=https%3A%2F%2Fwww.legrand.com.kh%2Fen%2Fcatalog%2Fproducts%2Fcircuit-breaker-dmx-sp-4000-4-poles-draw-out-version-and-electronic-protection-unit-670277&psig=AOvVaw3sJitbva3qSYvicMpdkDQK&ust=1738352748424000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCOi47eKanosDFQAAAAAdAAAAABAE';
  }

  factory Movie.fromJson(String str) => Movie.fromMap(json.decode(str));

  factory Movie.fromMap(Map<String, dynamic> json) => Movie(
        adult: json["adult"],
        backdropPath: json["backdrop_path"],
        genreIds: List<int>.from(json["genre_ids"].map((x) => x)),
        id: json["id"],
        originalLanguage: json["original_language"],
        originalTitle: json["original_title"],
        overview: json["overview"],
        popularity: json["popularity"].toDouble(),
        posterPath: json["poster_path"],
        releaseDate: json["release_date"],
        title: json["title"],
        video: json["video"],
        voteAverage: json["vote_average"].toDouble(),
        voteCount: json["vote_count"],
      );
}
