import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'dart:convert';
import '../models/restaurant.dart';

class RestaurantController extends GetxController {
  final restaurants = <Restaurant>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadRestaurants();
  }

  void loadRestaurants() async {
    final jsonStr = await rootBundle.loadString('data.json');
    final jsonMap = json.decode(jsonStr);
    final restaurantList = jsonMap['restaurants'] as List<dynamic>;
    restaurants.value = restaurantList
        .map((json) => Restaurant(
              name: json['name'],
              cuisine: json['cuisine'],
              price: json['price'],
              rating: json['rating'],
              location: json['location'],
              hours: json['hours'],
              website: json['website'],
              phoneNumber: json['phone number'],
            ))
        .toList();
  }
}