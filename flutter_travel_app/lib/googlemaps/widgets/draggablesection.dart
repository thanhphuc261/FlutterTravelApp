import 'package:flutter/material.dart';
import 'package:flutter_travel_app/googlemaps/widgets/explorerow.dart';
import 'package:flutter_travel_app/googlemaps/widgets/rowwidgets.dart';
import 'package:flutter_travel_app/googlemaps/widgets/rowimages.dart';
import 'package:flutter_travel_app/googlemaps/widgets/rowevents.dart';
import 'package:flutter_travel_app/googlemaps/widgets/rowlists.dart';
import 'package:flutter_travel_app/googlemaps/widgets/searchbar.dart';

class DraggableSection extends StatelessWidget {
  final double top;
  final double searchBarHeight;

  DraggableSection({required this.top, required this.searchBarHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 1.1,
        margin: EdgeInsets.only(top: this.top),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                blurRadius: 30,
                color: Colors.grey,
              )
            ]),
        child: Stack(
          children: <Widget>[
            ListView(children: <Widget>[
              ExploreRow(),
              RowWidgets(),
              RowImages(),
              RowEvents(),
              RowLists()
            ]),
            SearchBar(
                baseTop: this.top == 0.0 ? 0.0 : this.top,
                height: this.searchBarHeight),
          ],
        ));
  }
}
