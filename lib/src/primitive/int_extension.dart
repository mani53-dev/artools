import 'dart:math';

import 'package:flutter/material.dart';

extension IntExtension<T> on int {
  /// Returns the number of digits.
  int get length => toString().length;

  /// Returns a list of digits.
  List<int> get digits => toString().split('').map(int.parse).toList();

  bool isDivisibleBy(int divider) => this % divider == 0;

  /// Checks if divisible by all [dividers].
  bool isDivisibleByAll(List<int> dividers) =>
      dividers.every((divider) => this % divider == 0);

  String twoDigits() => this < 10 ? '0$this' : toString();

  SizedBox get height {
    return SizedBox(
      height: toDouble(),
    );
  }

  SizedBox get width {
    return SizedBox(
      width: toDouble(),
    );
  }
}

int randomInt({int? max}) => Random().nextInt(max ?? 1000000);
