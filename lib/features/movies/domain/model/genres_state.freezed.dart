// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'genres_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GenresState {
  num get identifier => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GenresStateCopyWith<GenresState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenresStateCopyWith<$Res> {
  factory $GenresStateCopyWith(
          GenresState value, $Res Function(GenresState) then) =
      _$GenresStateCopyWithImpl<$Res, GenresState>;
  @useResult
  $Res call({num identifier, String name});
}

/// @nodoc
class _$GenresStateCopyWithImpl<$Res, $Val extends GenresState>
    implements $GenresStateCopyWith<$Res> {
  _$GenresStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as num,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenresStateImplCopyWith<$Res>
    implements $GenresStateCopyWith<$Res> {
  factory _$$GenresStateImplCopyWith(
          _$GenresStateImpl value, $Res Function(_$GenresStateImpl) then) =
      __$$GenresStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num identifier, String name});
}

/// @nodoc
class __$$GenresStateImplCopyWithImpl<$Res>
    extends _$GenresStateCopyWithImpl<$Res, _$GenresStateImpl>
    implements _$$GenresStateImplCopyWith<$Res> {
  __$$GenresStateImplCopyWithImpl(
      _$GenresStateImpl _value, $Res Function(_$GenresStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
    Object? name = null,
  }) {
    return _then(_$GenresStateImpl(
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as num,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GenresStateImpl extends _GenresState {
  const _$GenresStateImpl({this.identifier = 0, this.name = ""}) : super._();

  @override
  @JsonKey()
  final num identifier;
  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'GenresState(identifier: $identifier, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenresStateImpl &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, identifier, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenresStateImplCopyWith<_$GenresStateImpl> get copyWith =>
      __$$GenresStateImplCopyWithImpl<_$GenresStateImpl>(this, _$identity);
}

abstract class _GenresState extends GenresState {
  const factory _GenresState({final num identifier, final String name}) =
      _$GenresStateImpl;
  const _GenresState._() : super._();

  @override
  num get identifier;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$GenresStateImplCopyWith<_$GenresStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
