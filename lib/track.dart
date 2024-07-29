import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final Completer<GoogleMapController> _googleMapController = Completer();
  CameraPosition? _cameraPosition;
  Location? _location;
  LocationData? _currentLocation;

  @override
  void initState() {
    super.initState();
    _init();
  }

  Future<void> _init() async {
    _location = Location();
    _cameraPosition = const CameraPosition(
      target: LatLng(0, 0), // example lat lng initializing
      zoom: 15,
    );
    await _initLocation();
  }

  Future<void> _initLocation() async {
    try {
      _currentLocation = await _location?.getLocation();
      _location?.onLocationChanged.listen((newLocation) {
        setState(() {
          _currentLocation = newLocation;
        });
        moveToPosition(LatLng(_currentLocation?.latitude ?? 0, _currentLocation?.longitude ?? 0));
      });
    } catch (e) {
      print("Error getting location: $e");
    }
  }

  Future<void> moveToPosition(LatLng latLng) async {
    final GoogleMapController mapController = await _googleMapController.future;
    await mapController.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: latLng,
          zoom: 15,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return _getMap();
  }

  Widget _getMarker() {
    return Container(
      width: 40,
      height: 40,
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(100),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0, 3),
            spreadRadius: 4,
            blurRadius: 6,
          )
        ],
      ),
      child: const ClipOval(
        child: CircleAvatar(
          backgroundColor: Colors.blueAccent,
        ),
      ),
    );
  }

  Widget _getMap() {
    return Stack(
      children: [
        GoogleMap(
          initialCameraPosition: _cameraPosition!,
          mapType: MapType.normal,
          onMapCreated: (GoogleMapController controller) {
            if (!_googleMapController.isCompleted) {
              _googleMapController.complete(controller);
            }
          },
        ),
         Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: _getMarker(),
          ),
        ),
      ],
    );
  }
}