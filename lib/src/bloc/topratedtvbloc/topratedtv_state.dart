import 'package:disneyhotstar/src/model/tv.dart';
import 'package:equatable/equatable.dart';

abstract class TvTopState extends Equatable {
  const TvTopState();

  @override
  List<Object> get props => [];
}

class TvTopLoading extends TvTopState {}

class TvTopLoaded extends TvTopState {
  final List<Tv> tvList;
  const TvTopLoaded(this.tvList);

  @override
  List<Object> get props => [tvList];
}

class TvTopError extends TvTopState {}
