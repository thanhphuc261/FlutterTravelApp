import 'package:flutter/material.dart';

import 'package:flutter_travel_app/googlemaps/screens/home.dart';
import 'package:flutter_travel_app/googlemaps/screens/event.dart';

import 'package:flutter_travel_app/googlemaps/theme/style.dart';

void main() => runApp(GMapsClone());

class GMapsClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Google Maps Redesign challenge',
      theme: appTheme(),
      initialRoute: "/",
      routes: <String, WidgetBuilder>{
        "/": (BuildContext ctx) => Home(
              title: 'Maps',
            ),
        "/Event": (BuildContext ctx) => Event()
      },
    );
  }
}
