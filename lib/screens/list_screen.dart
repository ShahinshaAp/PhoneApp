import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/restaurant_controller.dart';

class ListScreen extends StatelessWidget {
  final restaurantController = Get.find<RestaurantController>();
ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => ListView.builder(
          itemCount: restaurantController.restaurants.length,
          itemBuilder: (context, index) {
            final restaurant = restaurantController.restaurants[index];
            return ListTile(
              title: Text(restaurant.name),
              onTap: () {
                Get.toNamed('/screen2', arguments: restaurant);
              },
            );
          },
        ),
      ),
    );
  }
}