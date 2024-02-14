import 'package:demo_movies_map_profile/features/map/data/data_source/locations_data_source.dart';
import 'package:demo_movies_map_profile/features/map/data/locations_repository.dart';
import 'package:demo_movies_map_profile/features/map/domain/model/map_state.dart';
import 'package:demo_movies_map_profile/features/map/domain/use_cases/get_location_case_uses.dart';
import 'package:demo_movies_map_profile/features/map/framework/implemention/data/data_source/location_data_source_impl.dart';
import 'package:demo_movies_map_profile/features/map/framework/presentation/provider/map_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final locationsDataSourceProvider =
    Provider<LocationsDataSource>((ref) => LocationsDataSourceImpl());

final locationsRepositoryProvider = Provider(
    (ref) => LocationsRepository(ref.watch(locationsDataSourceProvider)));

final getLocationCaseUsesProvider = Provider(
    (ref) => GetLocationCaseUses(ref.watch(locationsRepositoryProvider)));

final mapProvider = StateNotifierProvider<MapProvider, MapState>((ref) {
  return MapProvider(ref.watch(getLocationCaseUsesProvider));
});
