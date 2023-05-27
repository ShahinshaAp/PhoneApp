import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:masalabox/controllers/restaurant_controller.dart';
import 'package:masalabox/screens/landing_screen.dart';
import 'package:masalabox/screens/screen2.dart';
import 'package:masalabox/screens/screen3.dart';
import 'controllers/contact_info_controller.dart';
import 'controllers/dish_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Phone App',
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
      initialBinding: BindingsBuilder(() {
        Get.put(RestaurantController());
        Get.put(DishController());
        Get.put(ContactInfoController());
        
      }),
      getPages: [
        GetPage(name: '/landing', page: () =>  const LandingScreen()),
        GetPage(name: '/screen2', page: () => Screen2()),
         GetPage(name: '/screen3', page: () => Screen3()),
      ],
      home:  const LandingScreen(),
    );
  }
}
