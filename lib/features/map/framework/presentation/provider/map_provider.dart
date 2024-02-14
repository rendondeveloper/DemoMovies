import 'package:demo_movies_map_profile/features/map/domain/model/map_state.dart';
import 'package:demo_movies_map_profile/features/map/domain/use_cases/get_location_case_uses.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:location/location.dart' as location;
import 'package:location/location.dart';

class MapProvider extends StateNotifier<MapState> {
  late location.Location? _location;
  final GetLocationCaseUses _getLocationCaseUses;

  MapProvider(this._getLocationCaseUses) : super(const MapState()) {
    _location = location.Location();
    Future.wait([_requestPermission(), _getLocations()]);
  }

  Future<bool?> _requestPermission() async {
    final location.PermissionStatus hasPermission =
        await _location?.requestPermission() ??
            location.PermissionStatus.denied;

    if (hasPermission == location.PermissionStatus.granted ||
        hasPermission == location.PermissionStatus.grantedLimited) {
      _initializationCurrentPosition();
    }
  }

  Future<void> _initializationCurrentPosition() async {
    _location?.onLocationChanged.listen((LocationData currentLocation) async {
      state = state.copyWith(
          latitude: currentLocation.latitude ?? 0.0,
          longitude: currentLocation.longitude ?? 0.0);
    });
  }

  Future<void> _getLocations() async {
    final result = await _getLocationCaseUses.invoke();
    state = state.copyWith(markers: result);
  }

  void loadMap() {
    state = state.copyWith(loadMap: true);
  }
}
