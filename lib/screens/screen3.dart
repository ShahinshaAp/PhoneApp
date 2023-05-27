import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controllers/contact_info_controller.dart';
import '../models/restaurant.dart';
import 'landing_screen.dart';

class Screen3 extends StatelessWidget {
  final contactInfoController = Get.find<ContactInfoController>();

  Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    final restaurant = Get.arguments as Restaurant;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            contactInfoController
                .setPhoneNumber(restaurant.phoneNumber.toString());
            Get.offAll(() => const LandingScreen());
          },
        ),
        title: const Text('Screen 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Phone Number'),
            Text(
              restaurant.phoneNumber.toString(),
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {
                contactInfoController
                    .setPhoneNumber(restaurant.phoneNumber.toString());
                Get.offAll(() => const LandingScreen());
              },
              child: const Text('Back to Screen 1'),
            ),
          ],
        ),
      ),
    );
  }
}
