import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class mapPage extends StatefulWidget {

  @override
  _mapPageState createState() => _mapPageState();
}

class _mapPageState extends State<mapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: _initialPosition,
        mapType: MapType.normal,
        onMapCreated: (controller) {

          setState(() {
            _controller = controller;
          });
        },
        markers: markers.toSet(),
        onTap: (cordinate) {
          _controller.animateCamera(CameraUpdate.newLatLng(cordinate));
          addMarker(cordinate);
        },

      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  GoogleMapController _controller;

  final CameraPosition _initialPosition = CameraPosition(
      target: LatLng(37.450244, 126.653445));

  final List<Marker> markers = [];

  addMarker(cordinate) {

    int id = Random().nextInt(100);

    setState(() {
      markers.add(
          Marker(position: cordinate, markerId: MarkerId(id.toString())));
    });
  }
}