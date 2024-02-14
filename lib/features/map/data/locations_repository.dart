import 'package:demo_movies_map_profile/features/map/data/data_source/locations_data_source.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationsRepository {
  final LocationsDataSource _locationsDataSource;

  LocationsRepository(this._locationsDataSource);

  Future<Set<Marker>> locationDatasource() =>
      _locationsDataSource.locationDatasource();
}
