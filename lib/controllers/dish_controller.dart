import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'dart:convert';

import '../models/dish.dart';

class DishController extends GetxController {
  final dishes = <Dish>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadDishes();
  }

  void loadDishes() async {
    final jsonStr = await rootBundle.loadString('data.json');
    final jsonMap = json.decode(jsonStr);
    final dishList = jsonMap['dishes'] as List<dynamic>;
    dishes.value = dishList
        .map((json) => Dish(
              name: json['name'],
              cuisine: json['cuisine'],
              price: json['price'],
              description: json['description'],
            ))
        .toList();
  }
}