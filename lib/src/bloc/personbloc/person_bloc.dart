import 'package:disneyhotstar/src/bloc/personbloc/person_event.dart';
import 'package:disneyhotstar/src/bloc/personbloc/person_state.dart';
import 'package:disneyhotstar/src/model/person.dart';
import 'package:disneyhotstar/src/model/services/api_services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonBloc extends Bloc<PersonEvent, PersonState> {
  PersonBloc() : super(PersonLoading());

  @override
  Stream<PersonState> mapEventToState(PersonEvent event) async* {
    if (event is PersonEventStated) {
      yield* _mapMovieEventStartedToState();
    }
  }

  Stream<PersonState> _mapMovieEventStartedToState() async* {
    final apiRepository = ApiService();
    yield PersonLoading();
    try {
      print('Genrebloc called.');
      final List<Person> movies = await apiRepository.getTrendingPerson();
      yield PersonLoaded(movies);
    } catch (_) {
      yield PersonError();
    }
  }
}
