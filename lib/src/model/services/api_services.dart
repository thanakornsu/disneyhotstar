import 'package:dio/dio.dart';

import '../movie.dart';
import '../tv.dart';

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

   // ************ Popular ************ //

  Future<List<Movie>> getPopularMovie() async {
    try {
      final url = '$baseUrl/movie/popular?api_key=$apiKey';
      print('Api Call Popular: $url');
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

  Future<List<Movie>> getPopularByGenre(int movieId) async {
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

  // ************ UpComing ************ //

  Future<List<Movie>> getUpcomingMovie() async {
    try {
      final url = '$baseUrl/movie/upcoming?api_key=$apiKey';
      print('Api Call Upcoming: $url');
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

  Future<List<Movie>> getUpcomingByGenre(int movieId) async {
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

 // ************ Top Rated ************ //

  Future<List<Movie>> getTopRatedMovie() async {
    try {
      final url = '$baseUrl/movie/top_rated?api_key=$apiKey';
      print('Api Call Top Rated: $url');
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

  Future<List<Movie>> getTopRatedByGenre(int movieId) async {
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

    // ************ TV TOP RATED ************ //

  Future<List<Tv>> getTopRatedTv() async {
    try {
      final url = '$baseUrl/tv/top_rated?api_key=$apiKey';
      print('Api Call TV Top Rated: $url');
      final response = await _dio.get(url);
      var tvtop = response.data['results'] as List;
      List<Tv> tvtopList = tvtop.map((m) => Tv.fromJson(m)).toList();
      return tvtopList;
    } catch (error, stacktrace) {
      print(error);
      throw Exception(
          'Exception accoured: $error with stacktrace: $stacktrace');
    }
  }

  Future<List<Tv>> getTopRatedTvGenre(int tvId) async {
    try {
      final url = '$baseUrl/discover/tv?with_genres=$tvId&api_key=$apiKey';
      print('Api Call: $url');
      final response = await _dio.get(url);
      var tvtop = response.data['results'] as List;
      List<Tv> tvtopList = tvtop.map((m) => Tv.fromJson(m)).toList();
      return tvtopList;
    } catch (error, stacktrace) {
      throw Exception(
          'Exception accoured: $error with stacktrace: $stacktrace');
    }
  }

}
