import 'package:flutter/foundation.dart';

class ARTools {
  DateTime? currentBackPressTime;
  Duration refreshDuration = const Duration(minutes: 3);

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

void printD(dynamic value) {
  if (kDebugMode) {
    print(value);
  }
}
