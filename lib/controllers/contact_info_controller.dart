import 'package:get/get.dart';

class ContactInfoController extends GetxController {
  final phoneNumber = 'Calling Phone..'.obs;

  void setPhoneNumber(String number) {
    phoneNumber.value = number;
  }
}