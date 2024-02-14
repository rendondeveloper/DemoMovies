import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
part 'map_state.freezed.dart';

@freezed
class MapState with _$MapState {
  const factory MapState({
    @Default(false) bool loadMap,
    @Default(<Marker>{}) Set<Marker> markers,
    @Default(0.0) double latitude,
    @Default(0.0) double longitude,
  }) =_MapState;
  const MapState._();
}