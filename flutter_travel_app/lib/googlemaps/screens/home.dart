import 'package:flutter/material.dart';
import 'package:flutter_travel_app/googlemaps/widgets/background.dart';
import 'package:flutter_travel_app/googlemaps/widgets/topsection.dart';
import 'package:flutter_travel_app/googlemaps/widgets/draggablesection.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

class Home extends StatefulWidget {
  Home({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Home> {
  double top = 0.0;
  double initialTop = 0.0;

  Completer<GoogleMapController> _controller = Completer();

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    final baseTop = MediaQuery.of(context).size.height * 0.6;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          BackgroundImage(
            mapWidget: GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                target: LatLng(48.814716, 2.349014),
                zoom: 12.0,
              ),
            ),
          ),
          GestureDetector(
            onPanUpdate: (DragUpdateDetails details) {
              final double scrollPos = details.globalPosition.dy;
              if (scrollPos < baseTop && scrollPos > 52) {
                setState(() {
                  top = scrollPos;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
