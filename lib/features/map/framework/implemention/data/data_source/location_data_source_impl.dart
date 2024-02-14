import 'package:demo_movies_map_profile/features/map/data/data_source/locations_data_source.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationsDataSourceImpl implements LocationsDataSource {
  @override
  Future<Set<Marker>> locationDatasource() {
    final value = {
      const Marker(
        markerId: MarkerId("Bellas Artes"),
        position: LatLng(19.433921, -99.1432231),
      ),
      const Marker(
        markerId: MarkerId("Chapultepec"),
        position: LatLng(19.4194815, -99.1920361),
      ),
      const Marker(
        markerId: MarkerId("Papalote Museo del Niño"),
        position: LatLng(19.4118959, -99.1947406)
      )
    };

    return Future.value(value);
  }
}
