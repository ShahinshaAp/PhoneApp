import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/contact_info_controller.dart';
import 'landing_screen.dart';

class ContactInfoScreen extends StatelessWidget {
  final contactInfoController = Get.find<ContactInfoController>();

  ContactInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.offAll(() => const LandingScreen());
          },
        ),
        title: const Text('Contact Info'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(contactInfoController.phoneNumber.value),
            ),
            ElevatedButton(
              child: const Text('Call'),
              onPressed: () {
                Get.offAllNamed('/landing');
              },
            ),
          ],
        ),
      ),
    );
  }
}
