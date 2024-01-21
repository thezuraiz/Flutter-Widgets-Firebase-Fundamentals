import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleAssignment extends StatefulWidget {
  const GoogleAssignment({super.key});

  @override
  State<GoogleAssignment> createState() => _GoogleAssignmentState();
}

class _GoogleAssignmentState extends State<GoogleAssignment> {
  var currentLocation = LatLng(31.5204, 74.3587);
  late GoogleMapController mapController;
  Map<String, Marker> _marker = {};

  addMarker(String id, LatLng location) {
    var marker = Marker(
        markerId: MarkerId(id),
        position: location,
        infoWindow: InfoWindow(
            title: 'Location Title',
            snippet: 'Location Description'),
    );
    _marker[id] = marker;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GoogleMap(
          initialCameraPosition: CameraPosition(
            target: currentLocation,
            zoom: 14,
          ),
          onMapCreated: (controller) {
            mapController = controller;
            addMarker('test', currentLocation);
          },
          markers: _marker.values.toSet(),
        ),
      ),
    );
  }
}
