import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

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

  static String prefixByZeroIfNeeded(int number) {
    if (number < 10 && number >= 1) {
      return '0$number';
    }
    return number.toString();
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

  static String formatDate(DateTime date, {required String format}) {
    return DateFormat('dd-MM-yyyy').format(date);
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

  static bool isSameDay(DateTime date1, DateTime date2) {
    return date1.year == date2.year &&
        date1.month == date2.month &&
        date1.day == date2.day;
  }
}
