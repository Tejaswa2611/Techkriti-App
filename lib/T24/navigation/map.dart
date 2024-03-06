import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Maps extends StatefulWidget {
  static const String routeName = '/Maps';
  const Maps({super.key});

  @override
  State<Maps> createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  Completer<GoogleMapController> _controller = Completer();

  static CameraPosition loc =
      const CameraPosition(target: LatLng(26.511639, 80.230954), zoom: 14);

  List<Marker> _marker = [];
  final List<Marker> _list = [
    const Marker(
        markerId: MarkerId("1"),
        position: LatLng(26.514323, 80.231223),
        infoWindow: InfoWindow(title: "Current position"))
  ];

  @override
  void initState() {
    //TODO: implement initState
    super.initState();
    loadData();
  }

  Future<Position> getUserCurrentLocation() async {
    await Geolocator.requestPermission()
        .then((value) {})
        .onError((error, stackTrace) {
      print("Error$error");
    });
    return await Geolocator.getCurrentPosition();
  }

  loadData() {
    getUserCurrentLocation().then((value) async {
      print("My Current Location");
      print("${value.latitude} ${value.longitude}");
      _marker.add(
        Marker(
            markerId: MarkerId("1"),
            position: LatLng(value.latitude, value.longitude),
            infoWindow: InfoWindow(title: "My Current location")),
      );
      CameraPosition cameraPosition = CameraPosition(
          zoom: 14, target: LatLng(value.latitude, value.longitude));

      final GoogleMapController controller = await _controller.future;
      controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
    });
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GoogleMap(
          onTap: (LatLng latlng) {
            _marker.add(
              Marker(
                  markerId: MarkerId("2"),
                  position: latlng,
                  infoWindow: InfoWindow(title: "Destination")),
            );
            setState(() {});
          },
          initialCameraPosition: loc,
          markers: Set<Marker>.of(_marker),
          myLocationButtonEnabled: true,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          print("My Current Location");
          getUserCurrentLocation().then((value) async {
            print("${value.latitude} ${value.longitude}");
            _marker.add(
              Marker(
                  markerId: MarkerId("1"),
                  position: LatLng(value.latitude, value.longitude),
                  infoWindow: InfoWindow(title: "My Current location")),
            );
            CameraPosition cameraPosition = CameraPosition(
                zoom: 14, target: LatLng(value.latitude, value.longitude));

            final GoogleMapController controller = await _controller.future;
            controller
                .animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
          });
          setState(() {});
        },
        child: Icon(Icons.location_disabled_outlined),
      ),
    );
  }
}
