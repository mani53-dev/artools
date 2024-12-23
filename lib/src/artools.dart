import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class ARTools {
  DateTime? currentBackPressTime;
  Duration refreshDuration = const Duration(minutes: 3);

  Future<bool> onWillPop() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime!) > const Duration(seconds: 2)) {
      currentBackPressTime = now;
      Get.snackbar("Alert", "Tap again to leave!",
          snackPosition: SnackPosition.BOTTOM,
          margin: const EdgeInsets.all(16),
          colorText: Get.theme.primaryColor);
      return Future.value(false);
    }
    SystemChannels.platform.invokeMethod('SystemNavigator.pop');
    return Future.value(true);
  }

  static DateTime convertMillisecondsToDateTime(String millisecondsSinceEpoch) {
    try {
      int milliseconds = int.parse(millisecondsSinceEpoch);
      DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(milliseconds);

      return dateTime;
    } catch (e) {
      return DateTime.now();
    }
  }

  static int calculateAge({required DateTime birthDate}) {
    DateTime today = DateTime.now();
    int age = today.year - birthDate.year;

    if (today.month < birthDate.month ||
        (today.month == birthDate.month && today.day < birthDate.day)) {
      age--;
    }

    return age;
  }

  static bool isValidPhoneNumber(String phoneNumber) {
    final RegExp regExp = RegExp(r'^\+[0-9]+\d*$');
    return regExp.hasMatch(phoneNumber);
  }
}
