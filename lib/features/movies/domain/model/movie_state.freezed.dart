// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MovieState {
  num get identifier => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  String get imagePoster => throw _privateConstructorUsedError;
  String get imageCard => throw _privateConstructorUsedError;
  num get vote => throw _privateConstructorUsedError;
  num get rating => throw _privateConstructorUsedError;
  List<String> get genres => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieStateCopyWith<MovieState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieStateCopyWith<$Res> {
  factory $MovieStateCopyWith(
          MovieState value, $Res Function(MovieState) then) =
      _$MovieStateCopyWithImpl<$Res, MovieState>;
  @useResult
  $Res call(
      {num identifier,
      String title,
      String overview,
      String imagePoster,
      String imageCard,
      num vote,
      num rating,
      List<String> genres});
}

/// @nodoc
class _$MovieStateCopyWithImpl<$Res, $Val extends MovieState>
    implements $MovieStateCopyWith<$Res> {
  _$MovieStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
    Object? title = null,
    Object? overview = null,
    Object? imagePoster = null,
    Object? imageCard = null,
    Object? vote = null,
    Object? rating = null,
    Object? genres = null,
  }) {
    return _then(_value.copyWith(
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as num,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      imagePoster: null == imagePoster
          ? _value.imagePoster
          : imagePoster // ignore: cast_nullable_to_non_nullable
              as String,
      imageCard: null == imageCard
          ? _value.imageCard
          : imageCard // ignore: cast_nullable_to_non_nullable
              as String,
      vote: null == vote
          ? _value.vote
          : vote // ignore: cast_nullable_to_non_nullable
              as num,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as num,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieStateImplCopyWith<$Res>
    implements $MovieStateCopyWith<$Res> {
  factory _$$MovieStateImplCopyWith(
          _$MovieStateImpl value, $Res Function(_$MovieStateImpl) then) =
      __$$MovieStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num identifier,
      String title,
      String overview,
      String imagePoster,
      String imageCard,
      num vote,
      num rating,
      List<String> genres});
}

/// @nodoc
class __$$MovieStateImplCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res, _$MovieStateImpl>
    implements _$$MovieStateImplCopyWith<$Res> {
  __$$MovieStateImplCopyWithImpl(
      _$MovieStateImpl _value, $Res Function(_$MovieStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
    Object? title = null,
    Object? overview = null,
    Object? imagePoster = null,
    Object? imageCard = null,
    Object? vote = null,
    Object? rating = null,
    Object? genres = null,
  }) {
    return _then(_$MovieStateImpl(
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as num,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      imagePoster: null == imagePoster
          ? _value.imagePoster
          : imagePoster // ignore: cast_nullable_to_non_nullable
              as String,
      imageCard: null == imageCard
          ? _value.imageCard
          : imageCard // ignore: cast_nullable_to_non_nullable
              as String,
      vote: null == vote
          ? _value.vote
          : vote // ignore: cast_nullable_to_non_nullable
              as num,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as num,
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$MovieStateImpl extends _MovieState {
  const _$MovieStateImpl(
      {this.identifier = 0,
      this.title = "",
      this.overview = "",
      this.imagePoster = "",
      this.imageCard = "",
      this.vote = 0,
      this.rating = 0.0,
      final List<String> genres = const []})
      : _genres = genres,
        super._();

  @override
  @JsonKey()
  final num identifier;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String overview;
  @override
  @JsonKey()
  final String imagePoster;
  @override
  @JsonKey()
  final String imageCard;
  @override
  @JsonKey()
  final num vote;
  @override
  @JsonKey()
  final num rating;
  final List<String> _genres;
  @override
  @JsonKey()
  List<String> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  String toString() {
    return 'MovieState(identifier: $identifier, title: $title, overview: $overview, imagePoster: $imagePoster, imageCard: $imageCard, vote: $vote, rating: $rating, genres: $genres)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieStateImpl &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.imagePoster, imagePoster) ||
                other.imagePoster == imagePoster) &&
            (identical(other.imageCard, imageCard) ||
                other.imageCard == imageCard) &&
            (identical(other.vote, vote) || other.vote == vote) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            const DeepCollectionEquality().equals(other._genres, _genres));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      identifier,
      title,
      overview,
      imagePoster,
      imageCard,
      vote,
      rating,
      const DeepCollectionEquality().hash(_genres));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieStateImplCopyWith<_$MovieStateImpl> get copyWith =>
      __$$MovieStateImplCopyWithImpl<_$MovieStateImpl>(this, _$identity);
}

abstract class _MovieState extends MovieState {
  const factory _MovieState(
      {final num identifier,
      final String title,
      final String overview,
      final String imagePoster,
      final String imageCard,
      final num vote,
      final num rating,
      final List<String> genres}) = _$MovieStateImpl;
  const _MovieState._() : super._();

  @override
  num get identifier;
  @override
  String get title;
  @override
  String get overview;
  @override
  String get imagePoster;
  @override
  String get imageCard;
  @override
  num get vote;
  @override
  num get rating;
  @override
  List<String> get genres;
  @override
  @JsonKey(ignore: true)
  _$$MovieStateImplCopyWith<_$MovieStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
