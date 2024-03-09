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
    _marker.add(
      Marker(
        markerId: MarkerId("4"),
        position: LatLng(26.5038788, 80.2280269),
        onTap: () {
          c1.addInfoWindow!(
              mapCard(
                  title: "Hovermania, Symphony, and others",
                  venue: "Events ground",
                  time: "8 p.m."),
              LatLng(26.5038788, 80.2280269));
        },
      ),
    );
    _marker.add(
      Marker(
        markerId: MarkerId("5"),
        position: LatLng(26.5050475, 80.2274397),
        onTap: () {
          c1.addInfoWindow!(
              mapCard(
                  title: "BeatBoxer, Fire Show and others",
                  venue: "OAT",
                  time: "8 p.m."),
              LatLng(26.5050475, 80.2274397));
        },
      ),
    );
    _marker.add(
      Marker(
        markerId: MarkerId("6"),
        position: LatLng(26.5051553, 80.2285989),
        onTap: () {
          c1.addInfoWindow!(
              mapCard(
                  title: "Silent Disco",
                  venue: "Swimming Pool",
                  time: "8 p.m."),
              LatLng(26.5051553, 80.2285989));
        },
      ),
    );
    _marker.add(
      Marker(
        markerId: MarkerId("7"),
        position: LatLng(26.5144878, 80.2322493),
        onTap: () {
          c1.addInfoWindow!(
              mapCard(
                  title: "Marketing Mavericks,etc",
                  venue: "IME",
                  time: "8 p.m."),
              LatLng(26.5144878, 80.2322493));
        },
      ),
    );
    _marker.add(
      Marker(
        markerId: MarkerId("8"),
        position: LatLng(26.5110244, 80.2327752),
        onTap: () {
          c1.addInfoWindow!(
              mapCard(title: "Embedded", venue: "L17", time: "8 p.m."),
              LatLng(26.5110244, 80.2327752));
        },
      ),
    );
    _marker.add(
      Marker(
        markerId: MarkerId("9"),
        position: LatLng(26.511416, 80.228503),
        onTap: () {
          c1.addInfoWindow!(
              mapCard(
                  title: "Sky Sparks", venue: "Hockey Ground", time: "8 p.m."),
              LatLng(26.511416, 80.228503));
        },
      ),
    );
    _marker.add(
      Marker(
        markerId: MarkerId("10"),
        position: LatLng(26.5037719, 80.2269068),
        onTap: () {
          c1.addInfoWindow!(
              mapCard(
                  title: "Bollywood Night",
                  venue: "Pronite Ground",
                  time: "8 p.m."),
              LatLng(26.5037719, 80.2269068));
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
