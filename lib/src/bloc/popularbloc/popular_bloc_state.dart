import 'package:disneyhotstar/src/model/movie.dart';
import 'package:equatable/equatable.dart';

abstract class PopularState extends Equatable {
  const PopularState();

  @override
  List<Object> get props => [];
}

class PopularLoading extends PopularState {}

class PopularLoaded extends PopularState {
  final List<Movie> movieList;
  const PopularLoaded(this.movieList);

  @override
  List<Object> get props => [movieList];
}

class PopularError extends PopularState {}
