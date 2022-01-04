import 'package:flutter/material.dart';
import 'package:flutter_travel_app/googlemaps/widgets/eventhero.dart';
import 'package:flutter_travel_app/googlemaps/widgets/eventbar.dart';
import 'package:flutter_travel_app/googlemaps/widgets/mapbackground.dart';
import 'package:flutter_travel_app/googlemaps/widgets/eventbanner.dart';

class Event extends StatelessWidget {
  Event();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      Align(
          alignment: Alignment.topLeft,
          child: Container(
              width: 50,
              height: 50,
              margin: EdgeInsets.only(top: 60, left: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  color: Colors.black),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.chevron_left, color: Colors.white, size: 26),
              ))),
    ]));
  }
}
