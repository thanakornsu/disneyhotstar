import 'package:dio/dio.dart';

import '../movie.dart';

class ApiService {
  final Dio _dio = Dio();
  final String baseUrl = 'https://api.themoviedb.org/3';
  final String apiKey = '6a0cc9a60becfce662345daa7adebcec';

    // ************ Now Playing ************ //

  Future<List<Movie>> getNowPlayingMovie() async {
    try {
      final url = '$baseUrl/movie/now_playing?api_key=$apiKey';
      print('Api Call: $url');
      final response = await _dio.get(url);
      var movies = response.data['results'] as List;
      List<Movie> movieList = movies.map((m) => Movie.fromJson(m)).toList();
      return movieList;
    } catch (error, stacktrace) {
      print(error);
      throw Exception(
          'Exception accoured: $error with stacktrace: $stacktrace');
    }
  }

  Future<List<Movie>> getMovieByGenre(int movieId) async {
    try {
      final url =
          '$baseUrl/discover/movie?with_genres=$movieId&api_key=$apiKey';
      print('Api Call: $url');
      final response = await _dio.get(url);
      var movies = response.data['results'] as List;
      List<Movie> movieList = movies.map((m) => Movie.fromJson(m)).toList();
      return movieList;
    } catch (error, stacktrace) {
      throw Exception(
          'Exception accoured: $error with stacktrace: $stacktrace');
    }
  }
}
