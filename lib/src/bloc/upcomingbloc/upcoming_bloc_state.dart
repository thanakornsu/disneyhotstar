import 'package:disneyhotstar/src/model/movie.dart';
import 'package:equatable/equatable.dart';

abstract class UpComingState extends Equatable {
  const UpComingState();

  @override
  List<Object> get props => [];
}

class UpComingLoading extends UpComingState {}

class UpComingLoaded extends UpComingState {
  final List<Movie> movieList;
  const UpComingLoaded(this.movieList);

  @override
  List<Object> get props => [movieList];
}

class UpComingError extends UpComingState {}
