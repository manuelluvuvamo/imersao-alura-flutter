import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:myapp/model/restaurant.dart';

class RestaurantsData extends ChangeNotifier {
  List<Restaurant> listRestaurant = [];

  Future<void> getRestaurants() async {

    String jsonsString = await rootBundle.loadString('assets/data.json');
    Map<String, dynamic> data = json.decode(jsonsString);

    for (var restaurant in data['restaurants']) {
      listRestaurant.add(Restaurant.fromMap(restaurant));
    }
  }
}
