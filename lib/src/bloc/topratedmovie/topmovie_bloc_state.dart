import 'package:disneyhotstar/src/model/movie.dart';
import 'package:equatable/equatable.dart';

abstract class MovieTopState extends Equatable {
  const MovieTopState();

  @override
  List<Object> get props => [];
}

class MovieTopLoading extends MovieTopState {}

class MovieTopLoaded extends MovieTopState {
  final List<Movie> movieList;
  const MovieTopLoaded(this.movieList);

  @override
  List<Object> get props => [movieList];
}

class MovieTopError extends MovieTopState {}
