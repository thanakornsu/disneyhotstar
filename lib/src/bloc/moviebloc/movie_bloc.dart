import 'package:disneyhotstar/src/model/movie.dart';
import 'package:disneyhotstar/src/model/services/api_services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'movie_bloc_event.dart';
import 'movie_bloc_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  MovieBloc() : super(MovieLoading());

  @override
  Stream<MovieState> mapEventToState(MovieEvent event) async* {
    if (event is MovieEventStarted) {
      yield* _mapMovieEventStateToState(event.movieId, event.query);
    }
  }

  Stream<MovieState> _mapMovieEventStateToState(
      int movieId, String query) async* {
    final service = ApiService();
    yield MovieLoading();
    try {
      List<Movie> movieList;
      if (movieId == 0) {
        movieList = await service.getNowPlayingMovie();
      } else {
        print(movieId);
        movieList = await service.getMovieByGenre(movieId);
      }

      yield MovieLoaded(movieList);
    } on Exception catch (e) {
      print(e);
      yield MovieError();
    }
  }
}
