import 'dart:async';

import 'package:custom_info_window/custom_info_window.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:techkriti/T24/navigation/mapCard.dart';

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
  final List<Marker> _list = [];

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
      _marker.add(
        Marker(
          markerId: MarkerId("1"),
          position: LatLng(value.latitude, value.longitude),
          infoWindow: InfoWindow(title: "My Current location"),
        ),
      );

      CameraPosition cameraPosition = CameraPosition(
          zoom: 14, target: LatLng(value.latitude, value.longitude));

      final GoogleMapController controller = await _controller.future;
      controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
    });
    _marker.add(
      Marker(
        markerId: MarkerId("3"),
        position: LatLng(26.5110683, 80.2325217),
        onTap: () {
          c1.addInfoWindow!(
              mapCard(title: "Rang Barse", venue: "L20", time: "6 p.m."),
              LatLng(26.5110683, 80.2325217));
        },
      ),
    );
    setState(() {});
  }

  CustomInfoWindowController c1 = CustomInfoWindowController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            onTap: (LatLng latlng) {
              c1.hideInfoWindow!();
              setState(() {});
            },
            onCameraMove: (position) {
              c1.onCameraMove!();
            },
            initialCameraPosition: loc,
            markers: Set<Marker>.of(_marker),
            myLocationButtonEnabled: true,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
              c1.googleMapController = controller;
            },
          ),
          CustomInfoWindow(
            controller: c1,
            width: 300,
            offset: 30,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
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
        child: Icon(Icons.location_on_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
