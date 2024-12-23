import 'dart:math';

import 'package:flutter/material.dart';

double randomDouble({double? max}) => Random().nextDouble() * (max ?? 1);

extension DoubleSizedBoxExtension on double {
  SizedBox get height {
    return SizedBox(
      height: this,
    );
  }

  SizedBox get width {
    return SizedBox(
      width: this,
    );
  }
}
