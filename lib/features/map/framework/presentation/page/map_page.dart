import 'dart:async';

import 'package:demo_movies_map_profile/common/utils/context_extension.dart';
import 'package:demo_movies_map_profile/features/map/domain/model/map_state.dart';
import 'package:demo_movies_map_profile/features/map/framework/di/map_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends ConsumerStatefulWidget {
  const MapPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MapPage();
}

class _MapPage extends ConsumerState<MapPage> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  @override
  Widget build(BuildContext context) {
    ref.watch(mapProvider.notifier).addListener((state) async {
      _movePositionOnMap(state.latitude, state.longitude);
    });

    return Scaffold(
        appBar: AppBar(
          title: Text(context.getString.mapPageAppBatTitle),
        ),
        body: StreamBuilder(
            stream: ref.watch(mapProvider.notifier).stream,
            builder: (context, snapshot) {
              final state = snapshot.hasData
                  ? snapshot.data as MapState
                  : const MapState();
              return Stack(
                children: [
                  Visibility(
                    visible: !state.loadMap,
                    child: const Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                  GoogleMap(
                      mapType: MapType.normal,
                      zoomControlsEnabled: false,
                      compassEnabled: false,
                      myLocationEnabled: true,
                      zoomGesturesEnabled: true,
                      markers: state.markers,
                      initialCameraPosition: const CameraPosition(
                          zoom: 10.0, target: LatLng(0.0, 0.0)),
                      onMapCreated: (GoogleMapController controller) {
                        _controller.complete(controller);
                        ref.read(mapProvider.notifier).loadMap();
                      }),
                ],
              );
            }));
  }

  _movePositionOnMap(double latitude, double longitude) async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(zoom: 10, target: LatLng(latitude, longitude))));
  }
}
