import 'package:freezed_annotation/freezed_annotation.dart';
part 'genres_state.freezed.dart';

@freezed
class GenresState with _$GenresState {

  const factory GenresState({
    @Default(0) num identifier,
    @Default("") String name
  }) = _GenresState;


  const GenresState._();
}