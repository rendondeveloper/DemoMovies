// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MapState {
  bool get loadMap => throw _privateConstructorUsedError;
  Set<Marker> get markers => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  double get zoom => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapStateCopyWith<MapState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapStateCopyWith<$Res> {
  factory $MapStateCopyWith(MapState value, $Res Function(MapState) then) =
      _$MapStateCopyWithImpl<$Res, MapState>;
  @useResult
  $Res call(
      {bool loadMap,
      Set<Marker> markers,
      double latitude,
      double longitude,
      double zoom});
}

/// @nodoc
class _$MapStateCopyWithImpl<$Res, $Val extends MapState>
    implements $MapStateCopyWith<$Res> {
  _$MapStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadMap = null,
    Object? markers = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? zoom = null,
  }) {
    return _then(_value.copyWith(
      loadMap: null == loadMap
          ? _value.loadMap
          : loadMap // ignore: cast_nullable_to_non_nullable
              as bool,
      markers: null == markers
          ? _value.markers
          : markers // ignore: cast_nullable_to_non_nullable
              as Set<Marker>,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      zoom: null == zoom
          ? _value.zoom
          : zoom // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapStateImplCopyWith<$Res>
    implements $MapStateCopyWith<$Res> {
  factory _$$MapStateImplCopyWith(
          _$MapStateImpl value, $Res Function(_$MapStateImpl) then) =
      __$$MapStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loadMap,
      Set<Marker> markers,
      double latitude,
      double longitude,
      double zoom});
}

/// @nodoc
class __$$MapStateImplCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$MapStateImpl>
    implements _$$MapStateImplCopyWith<$Res> {
  __$$MapStateImplCopyWithImpl(
      _$MapStateImpl _value, $Res Function(_$MapStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadMap = null,
    Object? markers = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? zoom = null,
  }) {
    return _then(_$MapStateImpl(
      loadMap: null == loadMap
          ? _value.loadMap
          : loadMap // ignore: cast_nullable_to_non_nullable
              as bool,
      markers: null == markers
          ? _value._markers
          : markers // ignore: cast_nullable_to_non_nullable
              as Set<Marker>,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      zoom: null == zoom
          ? _value.zoom
          : zoom // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$MapStateImpl extends _MapState {
  const _$MapStateImpl(
      {this.loadMap = false,
      final Set<Marker> markers = const <Marker>{},
      this.latitude = 0.0,
      this.longitude = 0.0,
      this.zoom = 20.0})
      : _markers = markers,
        super._();

  @override
  @JsonKey()
  final bool loadMap;
  final Set<Marker> _markers;
  @override
  @JsonKey()
  Set<Marker> get markers {
    if (_markers is EqualUnmodifiableSetView) return _markers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_markers);
  }

  @override
  @JsonKey()
  final double latitude;
  @override
  @JsonKey()
  final double longitude;
  @override
  @JsonKey()
  final double zoom;

  @override
  String toString() {
    return 'MapState(loadMap: $loadMap, markers: $markers, latitude: $latitude, longitude: $longitude, zoom: $zoom)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapStateImpl &&
            (identical(other.loadMap, loadMap) || other.loadMap == loadMap) &&
            const DeepCollectionEquality().equals(other._markers, _markers) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.zoom, zoom) || other.zoom == zoom));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loadMap,
      const DeepCollectionEquality().hash(_markers), latitude, longitude, zoom);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapStateImplCopyWith<_$MapStateImpl> get copyWith =>
      __$$MapStateImplCopyWithImpl<_$MapStateImpl>(this, _$identity);
}

abstract class _MapState extends MapState {
  const factory _MapState(
      {final bool loadMap,
      final Set<Marker> markers,
      final double latitude,
      final double longitude,
      final double zoom}) = _$MapStateImpl;
  const _MapState._() : super._();

  @override
  bool get loadMap;
  @override
  Set<Marker> get markers;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  double get zoom;
  @override
  @JsonKey(ignore: true)
  _$$MapStateImplCopyWith<_$MapStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
