// screens/screen2.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/restaurant.dart';

class Screen2 extends StatelessWidget {

  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    final restaurant = Get.arguments as Restaurant;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
        title: const Text('Screen 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Cuisine Name: ${restaurant.cuisine}'),
            const Text(
              'Address',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text('Website: ${restaurant.website}'),
            Text('Time: ${restaurant.hours}'),
            ElevatedButton(
              child: const Text('Contact Info'),
              onPressed: () {
                Get.toNamed('/screen3', arguments: restaurant);
              },
            ),
          ],
        ),
      ),
    );
  }
}
