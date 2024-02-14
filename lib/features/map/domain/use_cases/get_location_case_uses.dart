import 'package:demo_movies_map_profile/features/map/data/locations_repository.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GetLocationCaseUses {
  final LocationsRepository _locationsRepository;

  GetLocationCaseUses(this._locationsRepository);

  Future<Set<Marker>> invoke() => _locationsRepository.locationDatasource();
}
