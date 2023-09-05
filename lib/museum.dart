import 'dart:convert';

import 'package:flutter/services.dart';

import 'museum_model.dart';

Future<List<Museum>> getMuseums() async {
  // String jsonFile = 'assets/museum.json';
  String jsonString = await rootBundle.loadString('assets/museum.json');

  List<dynamic> museumJson = jsonDecode(jsonString);
  List<Museum> museums = [];

  for (var item in museumJson) {
    final museum = Museum.fromJson(item);
    // if (museum.name.startsWith('A') && museum.photoList.isNotEmpty) {
    museums.add(museum);
    // }
  }
  return museums;
}
