import 'package:flutter/material.dart';

List<Widget> getTabs(double _width) {
  List<Widget> tabs = [];

  var wid1 = SizedBox(
    width: _width,
    child: const Align(
      alignment: Alignment.centerLeft,
      child: Tab(
        text: 'Info',
      ),
    ),
  );
  var wid2 = SizedBox(
    width: _width,
    child: const Align(
      alignment: Alignment.centerLeft,
      child: Tab(
        text: 'Thrift',
      ),
    ),
  );
  var wid3 = SizedBox(
    width: _width,
    child: const Align(
      alignment: Alignment.centerLeft,
      child: Tab(
        text: 'Wishlist',
      ),
    ),
  );
  var wid4 = SizedBox(
    width: _width,
    child: const Align(
      alignment: Alignment.centerLeft,
      child: Tab(
        text: 'Events',
      ),
    ),
  );
  tabs.add(wid1);
  tabs.add(wid2);
  tabs.add(wid3);
  tabs.add(wid4);
  return tabs;
}
